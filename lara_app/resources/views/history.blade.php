@extends('layouts.appNew')
@section('content')
    <div class="container-fluid">
        <h3 class="text-center">Order History</h3>
        <div class="d-flex justify-content-center">
            <div class="col-md-6">
                <div class="card text-left">
                  <div class="card-body">
                    <div class="form-group">
                        <form action="{{url('')}}/searchHistory" method="get">
                            <div class="row p-3">
                                    <input type="number" class="form-control col-9 col-md-11" name="key" id="searchHistory" aria-describedby="helpId" placeholder="Search Order">
                                    <button type="submit" class="btn btn-primary col-3 col-md-1">
                                        <i class="fa fa-search-plus" aria-hidden="true"></i>
                                    </button>
                            </div>
                        </form>
                    </div>
                        @php
                            $phone = App\Models\ProductPage::where("user_id", Auth::user()->id)->first()->phone;
                        @endphp
                        @foreach ($data as $item)
                            @php
                                $product = $item->product;
                                $statusPay = $item->status_pay;
                                $href = "javascript:void(0)";
                                switch ($statusPay) {
                                    case 2:
                                        $noteStatus = (!is_null($product))? "PAID":"SUCCESS";
                                        $bgColor = "success";
                                        break;
                                    case 1:
                                        $noteStatus = "CANCELED";
                                        $bgColor = "danger";
                                        break;
                                    case 0:
                                        $noteStatus = "PAY NOW";
                                        $bgColor = "primary";
                                        $href = url('successorder/'.$item->product_id);
                                        break;
                                }
                                $price = $item->price + $item->fee;
                            @endphp
                            <div class="card bg-light mt-2">
                              <div class="card-body">
                                <div class="row">
                                    <div class="col-9">
                                        <div class="row">
                                            <div class="col-12">
                                                <h5>{{$item->product_id}}</h5>
                                            </div>
                                            @php
                                                if(!is_null($item->product)){
                                                    $note = '<p>
                                                        '.$product.' that costs '.$price.' will
                                                        be shipped to : <br>
                                                        <b>'.$item->shipping.'</b> <br>
                                                        only after you pay
                                                        </p>';
                                                } else {
                                                    $product = "Topup";
                                                    $note = '<p>Your mobile phone number '.$phone.' will<br>
                                                    receive Rp '.number_format($price, 2).'</p>';
                                                }
                                            @endphp
                                            <div class="col-12">
                                                <h5>{{$product}} - {{number_format($price, 2)}}</h5>
                                            </div>
                                            <div class="col-12">
                                                @php
                                                    echo $note;
                                                @endphp
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="d-flex">
                                            <input type="text" id="statusPay_{{$item->product_id}}"  hidden value="{{$statusPay}}">
                                            <a id="note_{{$item->product_id}}" class="btn btn-{{$bgColor}} col-12" href="{{$href}}" role="button">{{$noteStatus}}</a>
                                        </div>
                                        <small class="d-block text-center mt-2">{{$item->created_at}}</small>
                                    </div>
                                </div>
                              </div>
                            </div>
                            <script>
                                setInterval(() => {
                                    let val = $(`#statusPay_{{$item->product_id}}`).val();
                                    if(val == 0) {
                                        $.ajax({
                                            type: "get",
                                            url: "{{url('')}}/cekStatus/{{$item->product_id}}",
                                            success: function (response) {
                                                let objData = JSON.parse(response);
                                                if (objData.code == 200) {
                                                    $(`#statusPay_{{$item->product_id}}`).val(objData.status);
                                                    $(`#note_{{$item->product_id}}`).removeClass("btn-primary");
                                                    $(`#note_{{$item->product_id}}`).addClass(`btn-${objData.bgColor}`);
                                                    $(`#note_{{$item->product_id}}`).html(objData.noteStatus);
                                                    $(`#note_{{$item->product_id}}`).attr("href", objData.href);
                                                }
                                            }
                                        });
                                    }
                                }, 5000);
                            </script>
                        @endforeach

                        <div class="d-flex justify-content-center mt-3">
                        </div>
                        {{ $data->appends(['pagination' => 20])->links() }}
                  </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(`#searchHistory`).keypress(function(e){
            if(e.which == 13){
                alert($(`#searchHistory`).val());
            }
        });
    </script>
@endsection
