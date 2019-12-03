
@extends('ticketit::layouts.master')

@section('page', 'Riwayat')


@section('ticketit_content_parent_class', 'p-0')

@section('ticketit_extra_content')


@if(config('LaravelLogger.bladePlacement') == 'yield')
@section(config('LaravelLogger.bladePlacementCss'))
@elseif (config('LaravelLogger.bladePlacement') == 'stack')
@push(config('LaravelLogger.bladePlacementCss'))
@endif

@include('LaravelLogger::partials.styles')

@if(config('LaravelLogger.bladePlacement') == 'yield')
@endsection
@elseif (config('LaravelLogger.bladePlacement') == 'stack')
@endpush
@endif

@if(config('LaravelLogger.bladePlacement') == 'yield')
@section(config('LaravelLogger.bladePlacementJs'))
@elseif (config('LaravelLogger.bladePlacement') == 'stack')
@push(config('LaravelLogger.bladePlacementJs'))
@endif

@include('LaravelLogger::partials.scripts', ['activities' => $activities])
@include('LaravelLogger::scripts.confirm-modal', ['formTrigger' => '#confirmDelete'])

@if(config('LaravelLogger.enableDrillDown'))
@include('LaravelLogger::scripts.clickable-row')
@include('LaravelLogger::scripts.tooltip')
@endif

@if(config('LaravelLogger.bladePlacement') == 'yield')
@endsection
@elseif (config('LaravelLogger.bladePlacement') == 'stack')
@endpush
@endif

@section('template_title')
{{ trans('LaravelLogger::laravel-logger.dashboard.title') }}
@endsection

@php
switch (config('LaravelLogger.bootstapVersion')) {
    case '4':
    $containerClass = 'card';
    $containerHeaderClass = 'card-header';
    $containerBodyClass = 'card-body';
    break;
    case '3':
    default:
    $containerClass = 'panel panel-default';
    $containerHeaderClass = 'panel-heading';
    $containerBodyClass = 'panel-body';
}
$bootstrapCardClasses = (is_null(config('LaravelLogger.bootstrapCardClasses')) ? '' : config('LaravelLogger.bootstrapCardClasses'));
@endphp


<div class="container-fluid" id="pnewrint">


   <div class="row">
    <div class="col-sm-12">
        <div class="{{ $containerClass }} {{ $bootstrapCardClasses }}">
            <div class="{{ $containerHeaderClass }}">
                <div style="display: flex; justify-content: space-between; align-items: center;">

                    @if(config('LaravelLogger.enableSubMenu'))

                    <span>
                        {!! trans('LaravelLogger::laravel-logger.dashboard.title') !!}
                        <small>
                            <sup class="label label-default">
                                {{ $totalActivities }} {!! trans('LaravelLogger::laravel-logger.dashboard.subtitle') !!}
                            </sup>
                        </small>
                    </span>



                    @else
                    {!! trans('LaravelLogger::laravel-logger.dashboard.title') !!}
                    <span class="pull-right label label-default">
                        {{ $totalActivities }}
                        <span class="hidden-sms">
                            {!! trans('LaravelLogger::laravel-logger.dashboard.subtitle') !!}
                        </span>
                    </span>
                    @endif

                </div>
            </div>
            <div class="{{ $containerBodyClass }}">
            @if(config('LaravelLogger.enableSearch'))
   @include('LaravelLogger::partials.form-search')
   @endif
   @if(config('LaravelLogger.enablePackageFlashMessageBlade'))
   @include('LaravelLogger::partials.form-status')
   @endif
                @include('LaravelLogger::logger.partials.activity-table', ['activities' => $activities, 'hoverable' => true])
            </div>
        </div>
    </div>
</div>
</div>


@include('LaravelLogger::modals.confirm-modal', ['formTrigger' => 'confirmDelete', 'modalClass' => 'danger', 'actionBtnIcon' => 'fa-trash-o'])

@stop
@section('extra_script')
    <script>
jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});
    </script>
@stop