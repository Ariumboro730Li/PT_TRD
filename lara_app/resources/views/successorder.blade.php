@extends('layouts.appNew')

@section('content')
<div class="container">
    <h3 class="text-center">Success Order</h3>
    <div class="d-flex justify-content-center">
        <div class="col-md-6">
            <div class="card text-left">
              <div class="card-body">
                  <div class="row">
                      <div class="col-6">
                          <h6 class="card-title">Order Date</h6>
                      </div>
                      <div class="col-6">
                          <h6 class="card-title">{{$data->created_at}}</h6>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-6">
                          <h4 class="card-title">Order No</h4>
                      </div>
                      <div class="col-6">
                          <h4 class="card-title">{{$data->product_id}}</h4>
                      </div>
                  </div>
                  @php
                    $price = $data->price + $data->fee;
                @endphp
                  @if (!is_null($data->product))
                    <div class="row">
                        <div class="col-6">
                            <h4 class="card-title">Product</h4>
                        </div>
                        <div class="col-6">
                            <h4 class="card-title">{{$data->product}}</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <h4 class="card-title">Total</h4>
                        </div>
                        <div class="col-6">
                            <h4 class="card-title">{{number_format($price, 2)}}</h4>
                        </div>
                    </div>
                    <div class="mt-3">
                        <p class="card-text">{{$data->product}} that costs {{number_format($price, 2)}} will be shipped to </p>
                        <p>{{$data->shipping}}</p>
                        <p>only after you pay</p>
                    </div>
                  @else
                    <div class="row">
                        <div class="col-6">
                            <h4 class="card-title">Total Topup</h4>
                        </div>
                        <div class="col-6">
                            <h4 class="card-title">{{number_format($price, 2)}}</h4>
                        </div>
                    </div>
                  @endif

                <form action="{{url('')}}/payorder/" method="post">
                    @csrf
                    <div class="form-group" hidden>
                      <input type="text"
                        class="form-control" name="product_id" value="{{$data->product_id}}" aria-describedby="helpId" placeholder="">
                    </div>
                    <button class="btn btn-primary col-12 mt-4" type="submit" role="button">Pay NOW</button>
                </form>
              </div>
            </div>
        </div>
    </div>
</div>
@endsection
