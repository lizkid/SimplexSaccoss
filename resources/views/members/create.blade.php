@extends('layouts.master')

@section('title')

    Simplex: Members

@endsection

@section('stylesheet')
    <style>
        .error
        {
            color: red;
            font-size: 14px;
        }
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
                            <li class="breadcrumb-item active" aria-current="page">Create Member</li>
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
                    <h4>Creation of new member</h4>
                </div>

                <form action="{{url('/members/save')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="row p-3">
                        <div class="col-md-6 mb-3">
                            <label for="fname">First Name:</label>
                            @if($errors->has('fName'))<span class="error">{{$errors->first('fName')}}</span> @endif
                            <input class="form-control"  type="text" name="fName" required="" >
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="sname">Last Name:</label>
                            @if($errors->has('sName'))<span class="error">{{$errors->first('sName')}}</span> @endif
                            <input class="form-control"  type="text" name="sName" required="" >
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="email">Email:</label>
                            @if($errors->has('email'))<span class="error">{{$errors->first('email')}}</span> @endif
                            <input class="form-control"  type="email" name="email" required="" >
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="gender">Gender:</label>
                            @if($errors->has('gender'))<span class="error">{{$errors->first('gender')}}</span> @endif
                            <div class="row">
                                @foreach($gender as $row)
                                    <div class="col-md-6">
                                        <div class="form-check">
                                            <input style="transform: scale(1.5)" class="form-check-input" type="radio" name="gender" id="gridRadios1" value="{{$row->id}}"  required="" >
                                            <label class="form-check-label" for="gridRadios1">
                                                {{$row->name}}
                                            </label>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="date">Date Joined:</label>
                            @if($errors->has('date'))<span class="error">{{$errors->first('date')}}</span> @endif
                            <input class="form-control" id="joining_date" type="date" name="date" required="" >
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="phone">Phone:</label>
                            @if($errors->has('phone'))<span class="error">{{$errors->first('phone')}}</span> @endif
                            <input class="form-control"  type="text" name="phone" required="" >
                        </div>


                        <div class="col-md-6 mb-3">
                            <label for="uname">Attachment Type:</label>
                            @if($errors->has('a_type'))<span class="error">{{$errors->first('a_type')}}</span> @endif
                            <select name="a_type" class="form-control">
                                <option selected disabled>--select attachment--</option>
                                @foreach($attachments as $row)
                                    <option value="{{$row->id}}">{{$row->type}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="phone">Attachement:</label>
                            @if($errors->has('file'))<span class="error">{{$errors->first('file')}}</span> @endif
                            <input style="padding-top: 3px; padding-bottom: 3px;" class="form-control"  type="file" name="file" required="">
                        </div>


                        <div class="col-md-6 mb-3">
                            <button type="submit" class="btn btn-info btn-block my-4" name="save">Save</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>

@endsection

@section('js')


@stop
