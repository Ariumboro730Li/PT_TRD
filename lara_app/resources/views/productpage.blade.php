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
        <h3 class="text-center">Product</h3>
        <div class="d-flex justify-content-center">
            <div class="card text-left col-md-6">
                <div class="card-body col-12">
                    <form action="{{url('')}}/productpage" method="post">
                        @csrf
                        <div class="form-group">
                          <textarea class="form-control" name="product" rows="3"  maxlength="150" minlength="10" required  placeholder="Product"></textarea>
                        </div>
                        <div class="form-group">
                          <textarea class="form-control" name="shipping" rows="3" maxlength="150" minlength="10" required placeholder="Shipping Address"></textarea>
                        </div>
                        <div class="form-group">
                          <input type="integer" class="form-control" name="price" required aria-describedby="helpId" placeholder="Price">
                        </div>
                        <button type="submit" class="btn btn-primary col-12">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
