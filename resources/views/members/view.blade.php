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
                            <li class="breadcrumb-item active" aria-current="page">View Member</li>
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
                <div class="heading-title">
                    <h4>{{implode(" ", array($result->first_name, $result->second_name))}} Information</h4>
                </div>
                <div class="section_container row">
                    <div class="col-md-6">

                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered">
                                <tbody>

                                <tr>

                                    <td>First Name</td>
                                    <td>{{$result->first_name}}</td>

                                </tr>

                                <tr>

                                    <td>Second Name</td>
                                    <td>{{$result->second_name}}</td>

                                </tr>

                                <tr>

                                    <td>Member ID</td>
                                    <td>{{$result->member_id}}</td>

                                </tr>

                                <tr>

                                    <td>Email</td>
                                    <td>{{$result->email}}</td>

                                </tr>

                                <tr>

                                    <td>Phone</td>
                                    <td>{{$result->phone}}</td>

                                </tr>

                                <tr>

                                    <td>Date Joined</td>
                                    <td>{{$result->date_joined}}</td>

                                </tr>

                                <tr>

                                    <td>Status</td>
                                    <td>{{$result->STATUS}}</td>

                                </tr>

                                <tr>

                                    <td>Gender</td>
                                    <td>{{$result->gender}}</td>

                                </tr>

                                <tr>

                                    <td>Created At</td>
                                    <td>{{$result->created_at}}</td>

                                </tr>

                                <tr>

                                    <td>Attachement</td>
                                    <td>{{$result->file_name}}</td>

                                </tr>

                                </tbody>
                            </table>
                        </div>

                    </div>

                    <div class="col-md-6">
                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered">
                                <tbody>
                                <tr>
                                    <td>Number of contributions</td>
                                    <td>{{$result->no_of_contributions}}</td>
                                </tr>

                                <tr>
                                    <td>Previous Share</td>
                                    <td>{{$result->previous_share}}</td>

                                </tr>

                                <tr>
                                    <td>Current Share</td>
                                    <td>{{$result->current_share}}</td>
                                </tr>

                                <tr>
                                    <td>Previous Balance</td>
                                    <td>{{$result->previous_balance}}</td>

                                </tr>

                                <tr>
                                    <td>Current Contribution Balance</td>
                                    <td>{{$result->current_contribution_balance}}</td>
                                </tr>

                                <tr>
                                    <td>Previous Social Balance</td>
                                    <td>{{$result->previous_social_balance}}</td>
                                </tr>

                                <tr>
                                    <td>Current Social Balance</td>
                                    <td>{{$result->social_balance}}</td>

                                </tr>

                                <tr>
                                    <td>Requested Loan</td>
                                    <td>{{$result->requested_loans}}</td>
                                </tr>

                                <tr>
                                    <td>Unpaid Loan</td>
                                    <td>{{$result->unpaid_loan}}</td>

                                </tr>

                                <tr>
                                    <td>Total Loan Amount</td>
                                    <td>{{$result->loan_amount_remained}}</td>
                                </tr>

                                <tr>
                                    <td>Loan Amount Remained</td>
                                    <td>{{$result->loan_amount_remained}}</td>
                                </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@section('js')


@stop
