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
                <h4 class="page-title">Contributions</h4>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Create Contribution</li>
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
                <div class="mx-2 d-flex justify-content-end">
                    <a href="{{url('/contributions')}}" class="btn btn-secondary">Back</a>
                </div>
                <div class="heading-title">
                    <h4>Creation of new contribution</h4>
                </div>

                <form action="{{url('/members/save')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="row p-3">

                        <div class="col-md-6 mb-3">
                            <label for="uname">Member:</label>
                            @if($errors->has('a_type'))<span class="error">{{$errors->first('a_type')}}</span> @endif
                            <select name="a_type" class="form-control">
                                <option selected disabled>--select member--</option>
                                @foreach($members as $row)
                                    <option value="{{$row->id}}">{{implode(" ", array($row->first_name, $row->second_name))}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="uname">Contribution Type:</label>
                            @if($errors->has('a_type'))<span class="error">{{$errors->first('a_type')}}</span> @endif
                            <select name="a_type" class="form-control">
                                <option selected disabled>--select attachment--</option>
                                @foreach($types as $row)
                                    <option value="{{$row->id}}">{{$row->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="email">Amount:</label>
                            @if($errors->has('email'))<span class="error">{{$errors->first('email')}}</span> @endif
                            <input class="form-control"  type="email" name="email" required="" >
                        </div>


                        <div class="col-md-6 mb-3">
                            <label for="date">Date Contribution:</label>
                            @if($errors->has('date'))<span class="error">{{$errors->first('date')}}</span> @endif
                            <input class="form-control" id="joining_date" type="date" name="date" required="" >
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="phone">Contribution Year:</label>
                            @if($errors->has('phone'))<span class="error">{{$errors->first('phone')}}</span> @endif
                            <input class="form-control"  type="text" name="phone" required="" >
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="phone">Contribution Monthy:</label>
                            @if($errors->has('phone'))<span class="error">{{$errors->first('phone')}}</span> @endif
                            <input class="form-control"  type="text" name="phone" required="" >
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="email">Mpesa Reference No.:</label>
                            @if($errors->has('email'))<span class="error">{{$errors->first('email')}}</span> @endif
                            <input class="form-control"  type="email" name="email" required="" >
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="email">Mpesa Reference Text:</label>
                            @if($errors->has('email'))<span class="error">{{$errors->first('email')}}</span> @endif
                            <input class="form-control"  type="email" name="email" required="" >
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
