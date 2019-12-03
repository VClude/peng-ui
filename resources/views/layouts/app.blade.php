<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">


<head>
<title>@yield('page') - {{ config('app.name', 'Keluhan FTUI') }}</title>

    <!-- SECTION: Metadata -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('/FTUIM-Admin/apple-touch-icon.png') }}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('/FTUIM-Admin/favicon-32x32.png') }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('/FTUIM-Admin/favicon-16x16.png') }}">
    <link rel="manifest" href="{{ asset('/FTUIM-Admin/site.webmanifest') }}">
    <link rel="mask-icon" href="{{ asset('/FTUIM-Admin/safari-pinned-tab.svg') }}" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#2b5797">
    <meta name="theme-color" content="#ffffff">
    <!-- EOF Metadata -->

    <!-- NOTE: BEGIN OF CSS -->
        @yield('css_content')
        @yield('extra_css')
    <!-- EOF CSS --> 
</head>



<body>
    <div id="app" class="app">

            @yield('auth_content')
            @yield('content')

    </div>

    <!-- NOTE: BEGIN OF JS -->
      @yield('js_content')
    <!-- EOF JS --> 
      @yield('extra_script')
</body>

</html>
