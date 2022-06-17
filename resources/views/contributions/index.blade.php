@extends('layouts.master')

@section('title')

    Simplex: Contributions

@endsection

@section('stylesheet')


    <style>

    </style>


@stop
@section('content')
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">Contributions</h4>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Contributions</li>
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
                <div class="mx-2 d-flex justify-content-start">
                    <a href="{{url('/contributions/create')}}" class="btn btn-success">New Contribution</a>
                </div>
                <div class="heading-title">
                    <h4>Contributions list</h4>
                </div>

                <div class="table-responsive">

                    <table id="zero_config" class="table table-striped table-bordered">
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Full Name</th>
                            <th>Amount Contributed</th>
                            <th>Date Contributed</th>
                            <th>Mpesa No</th>
                            <th>Status</th>
                            <th>Is Confirmed</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($results as $index=>$row)

                            <tr>
                                <td>{{$index+1}}</td>
                                <td>{{implode(" ", array($row->first_name, $row->second_name))}}</td>
                                <td>{{$row->amount_contributed}}</td>
                                <td>{{$row->date_contributed}}</td>
                                <td>{{$row->generated_ref_no}}</td>
                                <td>{{$row->status_name}}</td>
                                <td>{{$row->is_confirmed}}</td>
                                <td>
                                    <a href="{{url('patients/view',[$row->id])}}" data-toggle="tooltip"
                                       data-placement="bottom" title="View" class="btn btn-outline-secondary">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach


                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

@endsection

@section('js')


@stop
