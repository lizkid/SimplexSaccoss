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
                <h4 class="page-title">Members</h4>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Registered Members</li>
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
                    <a href="{{url('/members/create')}}" class="btn btn-success">Create</a>
                </div>

                <div class="heading-title">
                    <h4>Registered Members</h4>
                </div>

                <div class="table-responsive">

                    <table id="zero_config" class="table table-striped table-bordered">
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Full Name</th>
                            <th>Email</th>
                            <th>Member ID</th>
                            <th>Phone</th>
                            <th>Date Joined</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                                                @foreach($members as $index=>$row)

                                                    <tr>
                                                        <td>{{$index+1}}</td>
                                                        <td>{{implode(" ", array($row->first_name, $row->second_name))}}</td>
                                                        <td>{{$row->email}}</td>
                                                        <td>{{$row->member_id}}</td>
                                                        <td>{{$row->phone}}</td>
                                                        <td>{{$row->date_joined}}</td>
                                                        <td>
                                                            <a href="{{url('members/view', [$row->member_id])}}" data-toggle="tooltip"
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
