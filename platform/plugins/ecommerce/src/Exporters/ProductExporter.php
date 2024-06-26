<?php

namespace Botble\Ecommerce\Exporters;

use Botble\DataSynchronize\Exporter\ExportColumn;
use Botble\DataSynchronize\Exporter\ExportCounter;
use Botble\DataSynchronize\Exporter\Exporter;
use Botble\Ecommerce\Enums\ProductTypeEnum;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Models\ProductVariation;
use Botble\Media\Facades\RvMedia;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Collection;

class ProductExporter extends Exporter
{
    protected bool $isMarketplaceActive;

    protected bool $isEnabledDigital;

    public function __construct()
    {
        $this->isMarketplaceActive = is_plugin_active('marketplace');
        $this->isEnabledDigital = EcommerceHelper::isEnabledSupportDigitalProducts();
    }

    public function getLabel(): string
    {
        return trans('plugins/ecommerce::products.name');
    }

    public function columns(): array
    {
        $columns = [
            ExportColumn::make('name'),
            ExportColumn::make('description'),
            ExportColumn::make('slug'),
            ExportColumn::make('url'),
            ExportColumn::make('sku'),
            ExportColumn::make('categories'),
            ExportColumn::make('status'),
            ExportColumn::make('is_featured'),
            ExportColumn::make('brand'),
            ExportColumn::make('product_collections'),
            ExportColumn::make('labels'),
            ExportColumn::make('taxes'),
            ExportColumn::make('image'),
            ExportColumn::make('images'),
            ExportColumn::make('price'),
            ExportColumn::make('product_attributes'),
            ExportColumn::make('import_type'),
            ExportColumn::make('is_variation_default'),
            ExportColumn::make('stock_status'),
            ExportColumn::make('with_storehouse_management'),
            ExportColumn::make('quantity'),
            ExportColumn::make('allow_checkout_when_out_of_stock'),
            ExportColumn::make('sale_price'),
            ExportColumn::make('start_date_sale_price'),
            ExportColumn::make('end_date_sale_price'),
            ExportColumn::make('weight'),
            ExportColumn::make('length'),
            ExportColumn::make('wide'),
            ExportColumn::make('height'),
            ExportColumn::make('cost_per_item'),
            ExportColumn::make('barcode'),
            ExportColumn::make('content'),
            ExportColumn::make('tags'),
            ExportColumn::make('generate_license_code'),
            ExportColumn::make('minimum_order_quantity'),
            ExportColumn::make('maximum_order_quantity'),
        ];

        if ($this->isEnabledDigital) {
            $columns[] = ExportColumn::make('product_type');
        }

        if ($this->isMarketplaceActive) {
            $columns[] = ExportColumn::make('vendor');
        }

        return $columns;
    }

    public function collection(): Collection
    {
        $products = collect();

        $with = [
            'categories',
            'slugable',
            'brand',
            'taxes',
            'productLabels',
            'productCollections',
            'variations',
            'variations.product',
            'variations.configurableProduct',
            'variations.productAttributes.productAttributeSet',
            'tags',
            'productAttributeSets',
        ];

        if ($this->isMarketplaceActive) {
            $with[] = 'store';
        }

        Product::query()
            ->select(['*'])
            ->where('is_variation', 0)
            ->with($with)
            ->chunk(400, function ($collection) use (&$products) {
                $products = $products->concat($this->productResults($collection));
            });

        return $products;
    }

    public function counters(): array
    {
        $products = Product::query()->where('is_variation', false)->count();
        $variations = ProductVariation::query()
            ->whereHas('product')
            ->whereHas(
                'configurableProduct',
                fn (Builder $query) => $query->where('is_variation', false)
            )
            ->count();

        return [
            ExportCounter::make()
                ->label(trans('plugins/ecommerce::products.export.total_items'))
                ->value(number_format($products + $variations)),
            ExportCounter::make()
                ->label(trans('plugins/ecommerce::products.export.total_products'))
                ->value(number_format($products)),
            ExportCounter::make()
                ->label(trans('plugins/ecommerce::products.export.total_variations'))
                ->value(number_format($variations)),
        ];
    }

    public function hasDataToExport(): bool
    {
        return Product::query()->exists();
    }

    public function productResults(Collection $products): array
    {
        $results = [];

        foreach ($products as $product) {
            $productAttributes = [];

            if (! $product->is_variation) {
                $productAttributes = $product->productAttributeSets->pluck('title')->all();
            }

            $result = [
                'name' => $product->name,
                'description' => $product->description,
                'slug' => $product->slug,
                'url' => $product->url,
                'sku' => $product->sku,
                'categories' => implode(',', $product->categories->pluck('name')->all()),
                'status' => $product->status->getValue(),
                'is_featured' => $product->is_featured,
                'brand' => $product->brand->name,
                'product_collections' => implode(',', $product->productCollections->pluck('name')->all()),
                'labels' => implode(',', $product->productLabels->pluck('name')->all()),
                'taxes' => implode(',', $product->taxes->pluck('title')->all()),
                'image' => RvMedia::getImageUrl($product->image),
                'images' => collect($product->images)->map(fn ($value) => RvMedia::getImageUrl($value))->implode(','),
                'price' => $product->price,
                'product_attributes' => implode(',', $productAttributes),
                'import_type' => 'product',
                'is_variation_default' => $product->is_variation_default,
                'stock_status' => $product->stock_status->getValue(),
                'with_storehouse_management' => $product->with_storehouse_management,
                'quantity' => $product->quantity,
                'allow_checkout_when_out_of_stock' => $product->allow_checkout_when_out_of_stock,
                'sale_price' => $product->sale_price,
                'start_date_sale_price' => $product->start_date,
                'end_date_sale_price' => $product->end_date,
                'weight' => $product->weight,
                'length' => $product->length,
                'wide' => $product->wide,
                'height' => $product->height,
                'cost_per_item' => $product->cost_per_item,
                'barcode' => $product->barcode,
                'content' => $product->content,
                'tags' => implode(',', $product->tags->pluck('name')->all()),
                'generate_license_code' => $product->generate_license_code,
                'minimum_order_quantity' => $product->minimum_order_quantity,
                'maximum_order_quantity' => $product->maximum_order_quantity,
            ];

            if ($this->isEnabledDigital) {
                $result['product_type'] = $product->product_type;
            }

            if ($this->isMarketplaceActive) {
                $result['vendor'] = $product->store_id ? $product->store->name : null;
            }

            $results[] = (object) $result;

            if ($product->variations->count()) {
                foreach ($product->variations as $variation) {
                    $productAttributes = $this->getProductAttributes($variation);

                    $results[] = (object) array_merge(
                        [
                            'name' => $variation->product->name,
                            'description' => '',
                            'slug' => '',
                            'url' => '',
                            'sku' => $variation->product->sku,
                            'categories' => '',
                            'status' => $variation->product->status->getValue(),
                            'is_featured' => '',
                            'brand' => '',
                            'product_collections' => '',
                            'labels' => '',
                            'taxes' => '',
                            'image' => RvMedia::getImageUrl($variation->product->image),
                            'images' => collect($variation->product->images)->map(fn ($value) => RvMedia::getImageUrl($value))->implode(','),
                            'price' => $variation->product->price,
                            'product_attributes' => implode(',', $productAttributes),
                            'import_type' => 'variation',
                            'is_variation_default' => $variation->is_default,
                            'stock_status' => $variation->product->stock_status->getValue(),
                            'with_storehouse_management' => $variation->product->with_storehouse_management,
                            'quantity' => $variation->product->quantity,
                            'allow_checkout_when_out_of_stock' => $variation->product->allow_checkout_when_out_of_stock,
                            'sale_price' => $variation->product->sale_price,
                            'start_date_sale_price' => $variation->product->start_date,
                            'end_date_sale_price' => $variation->product->end_date,
                            'weight' => $variation->product->weight,
                            'length' => $variation->product->length,
                            'wide' => $variation->product->wide,
                            'height' => $variation->product->height,
                            'cost_per_item' => $variation->product->cost_per_item,
                            'barcode' => $variation->product->barcode,
                            'content' => '',
                            'tags' => '',
                            'generate_license_code' => $variation->product->generate_license_code,
                            'minimum_order_quantity' => $variation->product->minimum_order_quantity,
                            'maximum_order_quantity' => $variation->product->maximum_order_quantity,
                        ],
                        $this->isEnabledDigital ? ['product_type' => ProductTypeEnum::PHYSICAL] : [],
                        $this->isMarketplaceActive ? ['vendor' => ''] : []
                    );
                }
            }
        }

        return $results;
    }

    public function getProductAttributes(Product|ProductVariation $product): array
    {
        $productAttributes = [];

        foreach ($product->productAttributes as $productAttribute) {
            if ($productAttribute->productAttributeSet) {
                $productAttributes[] = $productAttribute->productAttributeSet->title . ':' . $productAttribute->title;
            }
        }

        return $productAttributes;
    }
}
