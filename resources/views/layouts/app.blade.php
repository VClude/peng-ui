<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
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
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('page') - {{ config('app.name', 'Laravel') }}</title>

    <link rel="icon" type="image/png" href="{{ asset('/FTUIM-Admin/favicon.ico') }}" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/FTUIM-Admin/resources/css/styles.css') }}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/FTUIM-Admin/resources/css/vendor/animate/animate.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/FTUIM-Admin/resources/css/font-import.css') }}">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="{{ asset('/FTUIM-Admin/resources/css/styles.css') }}">
    <link rel="stylesheet" href="{{ asset('/FTUIM-Admin/resources/css/font-import.css') }}">
    <link rel="stylesheet" href="{{ asset('/FTUIM-Admin/resources/css/override.css') }}">
    <link rel="stylesheet" type="text/css"
        href="{{ asset('/FTUIM-Admin/resources/css/vendor/css-hamburgers/hamburgers.min.css') }}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
        href="{{ asset('/FTUIM-Admin/resources/css/vendor/animsition/css/animsition.min.css') }}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
        href="{{ asset('/FTUIM-Admin/resources/css/vendor/select2/select2.min.css') }}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
        href="{{ asset('/FTUIM-Admin/resources/css/vendor/daterangepicker/daterangepicker.css') }}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/FTUIM-Admin/pages/login/css/util.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/FTUIM-Admin/pages/login/css/main.css') }}">
    <!-- <link href="{{ asset('/FTUIM-Admincss/app.css') }}" rel="stylesheet"> -->
</head>

<body style="background-color: #FFFFFF;">
    <div id="app" class="app">



        <main class="py-4">
            @yield('auth_content')
            @yield('content')
        </main>
    </div>

    <!--===============================================================================================-->
    <script src="{{ asset('/FTUIM-Admin/resources/js/vendor/jquery/jquery-3.2.1.min.js') }}"></script>
    <!--===============================================================================================-->
    <script src="{{ asset('/FTUIM-Admin/resources/js/vendor/animsition/js/animsition.min.js') }}"></script>
    <!--===============================================================================================-->
    <script src="{{ asset('/FTUIM-Admin/resources/js/vendor/bootstrap/js/popper.js') }}"></script>
    <script src="{{ asset('/FTUIM-Admin/resources/js/vendor/bootstrap/js/bootstrap.min.js') }}"></script>
    <!--===============================================================================================-->
    <script src="{{ asset('/FTUIM-Admin/resources/js/vendor/select2/select2.min.js') }}"></script>
    <!--===============================================================================================-->
    <script src="{{ asset('/FTUIM-Admin/resources/js/vendor/daterangepicker/moment.min.js') }}"></script>
    <script src="{{ asset('/FTUIM-Admin/resources/js/vendor/daterangepicker/daterangepicker.js') }}"></script>
    <!--===============================================================================================-->
    <script src="{{ asset('/FTUIM-Admin/resources/js/vendor/countdowntime/countdowntime.js') }}"></script>
    <!--===============================================================================================-->
    <script src="{{ asset('/FTUIM-Admin/pages/login/js/main.js') }}"></script>

    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/jquery/jquery.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/jquery/jquery-ui.min.js') }}">
    </script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/bootstrap/bootstrap.min.js') }}">
    </script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/moment/moment.min.js') }}"></script>

    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/customscrollbar/jquery.mCustomScrollbar.min.js') }}"></script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/bootstrap-select/bootstrap-select.js') }}"></script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/select2/select2.full.min.js') }}">
    </script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/bootstrap-datetimepicker/bootstrap-datetimepicker.js') }}">
    </script>

    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/maskedinput/jquery.maskedinput.min.js') }}"></script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/form-validator/jquery.form-validator.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/noty/jquery.noty.packaged.js') }}">
    </script>

    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/datatables/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/datatables/dataTables.bootstrap.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/sweetalert/sweetalert.min.js') }}">
    </script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/knob/jquery.knob.min.js') }}">
    </script>

    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/jvectormap/jquery-jvectormap.min.js') }}"></script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/jvectormap/jquery-jvectormap-world-mill-en.js') }}"></script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/jvectormap/jquery-jvectormap-us-aea-en.js') }}"></script>

    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/sparkline/jquery.sparkline.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/morris/raphael.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/morris/morris.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/rickshaw/d3.v3.js') }}"></script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/rickshaw/rickshaw.min.js') }}">
    </script>

    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/isotope/isotope.pkgd.min.js') }}">
    </script>

    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/dropzone/dropzone.js') }}"></script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/nestable/jquery.nestable.js') }}">
    </script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/cropper/cropper.min.js') }}">
    </script>

    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/tableexport/tableExport.js') }}">
    </script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/tableexport/jquery.base64.js') }}">
    </script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/tableexport/html2canvas.js') }}">
    </script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/tableexport/jspdf/libs/sprintf.js') }}"></script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/tableexport/jspdf/jspdf.js') }}">
    </script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/tableexport/jspdf/libs/base64.js') }}"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js" integrity="sha256-xKeoJ50pzbUGkpQxDYHD7o7hxe0LaOGeguUidbq6vis=" crossorigin="anonymous"></script>

    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/bootstrap-daterange/daterangepicker.js') }}"></script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/bootstrap-tour/bootstrap-tour.min.js') }}"></script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/bootstrap-tagsinput/bootstrap-tagsinput.js') }}"></script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/vendor/fullcalendar/fullcalendar.js') }}">
    </script>
    <script type="text/javascript"
        src="{{ asset('/FTUIM-Admin/resources/js/vendor/smartwizard/jquery.smartWizard.js') }}"></script>

    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/app.js') }}"></script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/app_plugins.js') }}"></script>
    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/app_demo.js') }}"></script>

    <script type="text/javascript" src="{{ asset('/FTUIM-Admin/resources/js/script_index.js') }}"></script>
    <!-- Scripts -->
    <!-- <script src="{{ asset('/FTUIM-Adminjs/app.js') }}"></script> -->


    @yield('footer')
</body>

</html>
