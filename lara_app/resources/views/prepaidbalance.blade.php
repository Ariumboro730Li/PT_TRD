@extends('layouts.appNew')

@section('content')
    <div class="container-fluid">
        @if (count($errors) > 0)
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif
        <h3 class="text-center"> Topup Balance</h3>
        <div class="d-flex justify-content-center">
            <div class="card text-left col-md-6">
                <div class="card-body col-12">
                    <form action="{{url('')}}/prepaidbalance" method="post">
                        @csrf
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4">
                                    <select class="form-control" name="prefix" id="" required>
                                        <option value="081" selected>081</option>
                                    </select>
                                </div>
                                <div class="col-8">
                                    <input type="number" name="phone"
                                        required id=""
                                        class="form-control"
                                        maxlength="12"
                                        minlength="7"
                                        placeholder="Mobile Number"
                                        aria-describedby="helpId"
                                        value="{{old('phone')}}"
                                        >
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                        <select class="form-control" name="value" id="" required>
                            <option value="10000" selected>10.000</option>
                            <option value="50000">50.000</option>
                            <option value="100000">100.000</option>
                        </select>
                        </div>
                        <button type="submit" class="btn btn-primary col-12">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
