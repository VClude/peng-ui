@extends($master)

@section('content')
    @include('ticketit::shared.header')
    <div id="ignore-main-heading" class="app-header">
            <ul class="app-header-buttons">
                <li class="visible-mobile"><a href="#" class="btn btn-link btn-icon"
                        data-sidebar-toggle=".app-sidebar.dir-left"><span class="icon-menu"></span></a></li>
                <li class="hidden-mobile"><a href="#" class="btn btn-link btn-icon"
                        data-sidebar-minimize=".app-sidebar.dir-left"><span class="icon-list"></span></a></li>
            </ul>
            <form class="app-header-search" action="" method="post">
                <input type="text" name="keyword" placeholder="Search">
            </form>

            <ul class="app-header-buttons pull-right">
                <li>
                    <div class="contact contact-rounded contact-bordered contact-lg contact-ps-controls hidden-xs">
                        <img src="../resources/assets/images/users/user_1.jpg" alt="John Doe">
                        <div class="contact-container">
                            <a href="#">John Doe</a>
                            <span>Surveyor</span>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="dropdown">
                        <button class="btn btn-default btn-icon btn-informer" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="true"><span class="icon-alarm"></span><span
                                class="informer informer-danger informer-sm informer-square">+3</span></button>
                        <ul class="dropdown-menu dropdown-form dropdown-left dropdown-form-wide">
                            <li class="padding-0">

                                <div class="app-heading title-only app-heading-bordered-bottom">
                                    <div class="icon">
                                        <span class="icon-text-align-left"></span>
                                    </div>
                                    <div class="title">
                                        <h2>Notifications</h2>
                                    </div>
                                    <div class="heading-elements">
                                        <a href="#" class="btn btn-default btn-icon"><span class="icon-sync"></span></a>
                                    </div>
                                </div>

                                <div class="app-timeline scroll app-timeline-simple text-sm mCustomScrollbar _mCS_2 mCS-autoHide mCS_no_scrollbar"
                                    style="height: 240px;">
                                    <div id="mCSB_2" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
                                        style="max-height: 200px;" tabindex="0">
                                        <div id="mCSB_2_container"
                                            class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
                                            style="position:relative; top:0; left:0;" dir="ltr">

                                            <div class="app-timeline-item">
                                                <div class="dot dot-primary"></div>
                                                <div class="content">
                                                    <div class="title margin-bottom-0"><a href="#">Jessie Franklin</a>
                                                        uploaded new file <strong>844_jswork.pdf</strong></div>
                                                </div>
                                            </div>

                                            <div class="app-timeline-item">
                                                <div class="dot dot-warning"></div>
                                                <div class="content">
                                                    <div class="title margin-bottom-0"><a href="#">Taylor Watson</a>
                                                        changed work status <strong>PSD Dashboard</strong></div>
                                                </div>
                                            </div>

                                            <div class="app-timeline-item">
                                                <div class="dot dot-success"></div>
                                                <div class="content">
                                                    <div class="title margin-bottom-0"><a href="#">Dmitry Ivaniuk</a>
                                                        approved project <strong>Boooya</strong></div>
                                                </div>
                                            </div>

                                            <div class="app-timeline-item">
                                                <div class="dot dot-success"></div>
                                                <div class="content">
                                                    <div class="title margin-bottom-0"><a href="#">Boris Shaw</a>
                                                        finished work on <strong>Boooya</strong></div>
                                                </div>
                                            </div>

                                            <div class="app-timeline-item">
                                                <div class="dot dot-danger"></div>
                                                <div class="content">
                                                    <div class="title margin-bottom-0"><a href="#">Jasmine Voyer</a>
                                                        declined order <strong>Project 155</strong></div>
                                                </div>
                                            </div>

                                        </div>
                                        <div id="mCSB_2_scrollbar_vertical"
                                            class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical"
                                            style="display: none;">
                                            <div class="mCSB_draggerContainer">
                                                <div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
                                                    style="position: absolute; min-height: 30px; top: 0px;">
                                                    <div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
                                                </div>
                                                <div class="mCSB_draggerRail"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </li>
                            <li class="padding-top-0">
                                <button class="btn btn-block btn-link">Preview All</button>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    @guest
                <li>
                    <a class="nav-link" href="{{ route('login') }}" class="btn btn-default btn-icon"><span class="icon-power-switch">{{ __('Login') }}</a>
                </li>
                @if (Route::has('register'))
                                <li>
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li>
                                <a id="navbarDropdown" href="#" role="button">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>
                            </li>
                            <li>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                            </li>
                        @endguest
            </ul>
        </div>
    <div class="container">
        <div class="card mb-3">
            <div class="card-body">
                @include('ticketit::shared.nav')
            </div>
        </div>
        @if(View::hasSection('ticketit_content'))
            <div class="card">
                <h5 class="card-header d-flex justify-content-between align-items-baseline flex-wrap">
                    @if(View::hasSection('page_title'))
                        <span>@yield('page_title')</span>
                    @else
                        <span>@yield('page')</span>
                    @endif

                    @yield('ticketit_header')
                </h5>
                <div class="card-body @yield('ticketit_content_parent_class')">
                    @yield('ticketit_content')
                </div>
            </div>
        @endif
        @yield('ticketit_extra_content')
    </div>
@stop
