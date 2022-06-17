@extends('layouts.master')

@section('title')

    Simplex: Members

@endsection

@section('stylesheet')
    <style>

    </style>
@stop

@section('content')
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">Payments</h4>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Payments Requests</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <!-- Container fluid  -->
    <!-- ============================================================== -->

    <div class="col-md-12">

        <div class="card">
            <div class="card-body">

                @include('partial.flash')

                <div class="heading-title">
                    <h4>Payment Requests List</h4>
                </div>

                <div class="table-responsive">

                    <table id="zero_config" class="table table-striped table-bordered">
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Full Name</th>
                            <th>MRN</th>
                            <th>Gender</th>
                            <th>Date Of Birth</th>
                            <th>Date Created</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        {{--                        @foreach($patients->data as $index=>$row)--}}

                        {{--                            <tr>--}}
                        {{--                                <td>{{$index+1}}</td>--}}
                        {{--                                <td>{{implode(" ", array($row->first_name, $row->second_name, $row->last_name))}}</td>--}}
                        {{--                                <td>{{$row->mrn}}</td>--}}
                        {{--                                <td>{{$row->gender_name}}</td>--}}
                        {{--                                <td>{{$row->dob}}</td>--}}
                        {{--                                <td>{{$row->created_at}}</td>--}}
                        {{--                                <td>--}}
                        {{--                                    <a href="{{url('patients/view',[$row->account_number, $row->mrn, $row->visit_id, $row->consultation_id])}}" data-toggle="tooltip"--}}
                        {{--                                       data-placement="bottom" title="View" class="btn btn-outline-secondary">--}}
                        {{--                                        <i class="fas fa-eye"></i>--}}
                        {{--                                    </a>--}}
                        {{--                                </td>--}}
                        {{--                            </tr>--}}
                        {{--                        @endforeach--}}


                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

@endsection

@section('js')


@stop
