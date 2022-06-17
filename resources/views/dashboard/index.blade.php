@extends('layouts.master')

@section('title')

    Simplex: Home

@endsection

@section('stylesheet')


    <style>
        .box-layout {
            width: 100%;
            height: 120px;
            margin-bottom: 30px;
            border:  solid 2px #f7f7f7;
            cursor: pointer;
            transition: 0.3s ease-in-out;
            box-shadow:0 14px 24px rgba(62, 57, 107, 0.1)

        }

        .box-layout:hover{
            transform: translateY(-3px);

        }

        .box-layout .box-layout-title {
            height: 40%;
            /*background-color: #f7f7f7;*/
        }

        .box-layout-title>span{

            font-size: 16px;
        }


        .box-title-left{

            float: left;
            width: 10%;
            margin-left: 1%;
            margin-top: 4px;

        }

        .box-title-right {

            float: left;
            width: 87%;
        }


        .box-content{

            height: 60%;
            text-align: center;
        }

        .box-content>span{

            font-size: 20px;
            font-weight: bold;
            /*line-height: 100%;*/
            margin-top: 40px;

        }
        .header-box-title {
            height: 30px;
            background-color: #2e6a94d9;
            color: white;
            text-align: center;
            line-height: 30px;
        }

        .header-box-title span{

            line-height: 20px;
        }

        .left-box{
            float: left; height:60px; line-height: 50px;
            border-right: solid 1px #c6b8b8; width: 40%; margin-top: 20px;
        }

        .left-box span{
            display: grid;
            grid-template-columns: auto;
            justify-content: center;
            font-size: 16px;
        }

        .right-box{

            float: left;
            height:60px;
            width: 50%;
            margin-top: 20px;
        }

        .sp-number{

            margin-left: 5px;
            line-height: 50px;
            font-size: 20px;
            color: rgb(48,206,214);
        }
    </style>


@stop
@section('content')
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">Dashboard</h4>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Library</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->

    <div class="card">
        <div class="card-body">
            <div class="container-fluid">

                <div class="row">

                    <table class="table table-bordered">

                        <tbody>
                        <tr>
                            <td style="font-weight: bold">DASHBOARD DATA</td>
                        </tr>
                        </tbody>
                    </table>

                    <div class="col-lg-4 col-md-6">

                        <div class="box-layout">

                            <div class="header-box-title">
                                <span style="">Doctors</span>
                            </div>

                            <div class="content-box">

                                <div class="left-box" >

                                    <span>Total</span>

                                </div>

                                <div class="right-box">

                                    <span class="sp-number" ><strong>{{number_format(12)}}</strong></span>

                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-4 col-md-6">

                        <div class="box-layout">

                            <div class="header-box-title">
                                <span style="">Nurses</span>
                            </div>

                            <div class="content-box">

                                <div class="left-box" >

                                    <span>Total</span>

                                </div>

                                <div class="right-box">

                                    <span class="sp-number" ><strong>{{number_format(111)}}</strong></span>

                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-4 col-md-6">

                        <div class="box-layout">

                            <div class="header-box-title">
                                <span style="">Specialists</span>
                            </div>

                            <div class="content-box">

                                <div class="left-box" >

                                    <span>Total</span>

                                </div>

                                <div class="right-box">

                                    <span class="sp-number" ><strong>{{number_format('3')}}</strong></span>

                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-4 col-md-6">

                        <div class="box-layout">

                            <div class="header-box-title">
                                <span style="">Patients visited</span>
                            </div>

                            <div class="content-box">

                                <div class="left-box" >

                                    <span>Total</span>

                                </div>

                                <div class="right-box">

                                    <span class="sp-number" ><strong>{{number_format(1230000000, '0', '.', ',')}}</strong></span>

                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-4 col-md-6">

                        <div class="box-layout">

                            <div class="header-box-title">
                                <span style="">Patients admitted</span>
                            </div>

                            <div class="content-box">

                                <div class="left-box" >

                                    <span>Total</span>

                                </div>

                                <div class="right-box">

                                    <span class="sp-number" ><strong>{{number_format(1110, '2', '.', ',')}}</strong></span>

                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-4 col-md-6">

                        <div class="box-layout">

                            <div class="header-box-title">
                                <span style="">Appointments</span>
                            </div>

                            <div class="content-box">

                                <div class="left-box" >

                                    <span>Total</span>

                                </div>

                                <div class="right-box">

                                    <span class="sp-number" ><strong>{{number_format('300',2,'.',',')}}</strong></span>

                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-12 mt-5 pt-5">

                        <h5 class="card-title">Monthly Patient Visit </h5>
                        <canvas id="myChart" width="400" height="200"></canvas>

                    </div>


                </div>

            </div>
    </div>

    </div>

@endsection

@section('js')

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.bundle.js"></script>


<script>
    var ctx = document.getElementById('myChart');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            datasets: [{
                label: 'Patient visit per month',
                data: [200000, 497500, 189999, 90000, 250987, 68888, 204560, 89750, 129979, 30000, 150987, 495788],

                backgroundColor: 'rgba(0, 0, 0, 0)',

                borderColor: [

                    'rgb(48,206,214)'
                ],
                borderWidth: 3
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>

@stop
