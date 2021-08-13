@extends('layouts.appNew')

@section('content')
<div class="container">
    <h3 class="text-center">Pay Your Order</h3>
    <div class="d-flex justify-content-center">
        <div class="col-md-6">
            <div class="card text-left">
              <div class="card-body">
                <form action="{{url('')}}/paynow/" method="post">
                    @csrf
                    <div class="form-group">
                      <input type="text"
                        class="form-control" name="product_id" value="{{$product_id}}" hidden  aria-describedby="helpId" placeholder="">
                      <input type="text"
                        class="form-control" value="{{$product_id}}" disabled aria-describedby="helpId" placeholder="">
                    </div>
                    <button class="btn btn-primary col-12 mt-4" type="submit" role="button">Pay NOW</button>
                </form>
              </div>
            </div>
        </div>
    </div>
</div>
@endsection
