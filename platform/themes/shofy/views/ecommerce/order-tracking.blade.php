@php
    Theme::layout('full-width');
@endphp

<section class="tp-order-area pb-160 pt-80">
    <div class="container">
        <div class="tp-order-inner">
            <div class="tp-order-info-wrapper">
                {!! $form->renderForm() !!}
            </div>
        </div>

        @include(EcommerceHelper::viewPath('includes.order-tracking-detail'))
    </div>
</section>
