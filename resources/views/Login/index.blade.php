<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Login</title>

    <!-- Custom CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="{{asset('resources/css/style.css')}}">

    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">

    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/form.css')}}">

    <style>
        .input-container
        {
            margin-bottom: 10px;
        }
    </style>

</head>

<body style="background: #365a94; color: white;">

<div style="margin-top: 50px; ">


    <div style="left: 50%; top: 50%; transform: translate(-50%, -50%); position: absolute;">

        <div>
            @include('partial.flash')
        </div>

        <div class="card">

            <div class="card-header">
                <h4 class="text-center my-2">Login Here</h4>
            </div>


            <div class="card-body">
                <form action="{{url('/login')}}"  method="post">
                    @csrf

                    <div>
                        <div class="input-block mb-3 pt-3">
                            <input type="text" name="username" id="username" required spellcheck="false"><span class="placeholder">Username</span>
                        </div>
                    </div>

                    <div>
                        <div class="input-block mb-3 pt-3">
                            <input autocomplete="off" type="password" name="password" id="password" required spellcheck="false"><span class="placeholder">Password</span>
                        </div>
                    </div>

                    <div class="pt-3">
                        <button id="login-btn" type="submit" class="btn btn-block mt-3">Login</button>
                    </div>
                </form>
            </div>
    </div>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

</body>


</html>


