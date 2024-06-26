@if(request()->ajax() && isset($products))
    @if ($products->isNotEmpty())
        <div class="row">
            <div class="tp-product-related-slider">
                <div class="tp-product-related-slider-active swiper-container mb-10">
                    <div class="swiper-wrapper">
                        @foreach ($products as $product)
                            <div class="swiper-slide">
                                @include(Theme::getThemeNamespace('views.ecommerce.includes.product-item'))
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="tp-related-swiper-scrollbar tp-swiper-scrollbar"></div>
            </div>
        </div>
    @endif
@else
    <div data-bb-toggle="block-lazy-loading" data-url="{{ route('public.ajax.related-products', $product) }}" class="position-relative" style="min-height: 14rem">
        <div class="loading-spinner"></div>
    </div>
@endif
