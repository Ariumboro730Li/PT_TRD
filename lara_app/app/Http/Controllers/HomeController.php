<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\PrepaidBalance;
use App\Models\ProductPage;
use Illuminate\Support\Facades\Auth;
use App\Models\ProductIdList;
use App\Models\ShippingIdList;
use App\Models\User;
use Carbon\Carbon;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('prepaidbalance');
    }

    public function productPage(){
        return view('productpage');
    }

    public function successOrder($param){
        $data = ProductPage::where("product_id", $param)->orderBy("id", "desc")->first();
        if ($data == null) {
            return redirect('productpage');
        }
        return view('successorder')->with("data", $data);
    }


    public function payOrder(request $request){
        $product_id = $request->input("product_id");
        if ($product_id == null) {
            return redirect('productpage');
        }
        return view('paynow')->with("product_id", $product_id);
    }

    public function history(request $request){
        $pagination = $request->input("pagination", 20);
        $data = ProductPage::where("user_id", Auth::user()->id)->orderBy("created_at", "desc")->paginate($pagination);
        return view("history",  compact('data'));
    }

    public function payNow(request $request){
        $product_id = $request->input("product_id");
        $data = ProductPage::where("product_id", $product_id)->first();
        if ($data != null) {
            ProductPage::where("product_id", $product_id)->update([
                'status_pay'    => 2
            ]);

            return redirect('history');
        }
        return redirect('productpage');
    }

    public function prepaidBalanceForm(request $request){
        $validate = $this->validate($request,[
            'phone' => 'required|min:7|max:12',
        ]);
        $prefix = $request->input("prefix");
        $phone = $request->input("phone");
        $value = $request->input("value");
        $getProdId = $this->getOrderId();
        $now = strtotime(date("H:i:s"));
        $now = (int)date("His");
        $data = [
            "user_id"   => Auth::user()->id,
            "product_id"   => $getProdId,
            "shipping_id"   => 0,
            "phone" => $prefix."".$phone,
            "price" => $value,
            "fee"   => ($value * 5) / 100,
            "status_pay"  => 0,
        ];
        ProductPage::create($data);
        return redirect('successorder/'.$getProdId);
    }

    public function productPageForm(request $request){
        $validate = $this->validate($request,[
            'product' => 'required|min:10|max:150',
            'shipping' => 'required|min:10|max:150',
            'price' => 'required',
        ]);
        $product = $request->input("product");
        $shipping = $request->input("shipping");
        $price = $request->input("price");

        $getProdId = $this->getOrderId();
        $getShipId = $this->getShippingtId();


        $data = [
            "user_id"   => Auth::user()->id,
            "product_id"   => $getProdId,
            "product" => $product,
            "shipping" => $shipping,
            "shipping_id" => $getShipId,
            "price" => $price,
            "fee"   => 10000,
            "status_pay"    => 0,
        ];
        ProductPage::create($data);
        return redirect('successorder/'.$getProdId);
    }

    public function getOrderId(){
        $randIdProduct = ProductIdList::orderBy("id", "desc")->first();
        if ($randIdProduct == null) {
            $productIdLast = 1000000000 ;
        } else {
            $productIdLast = $randIdProduct->product_id;
        }

        $getId = $productIdLast + rand(1000, 5000);

        ProductIdList::create([
            'product_id'    => $getId,
        ]);
        return $getId;
    }
    public function getShippingtId(){
        $randIdProduct = ShippingIdList::orderBy("id", "desc")->first();
        if ($randIdProduct == null) {
            $productIdLast = 30000000;
        } else {
            $productIdLast = $randIdProduct->product_id;
        }

        $getId = $productIdLast + rand(1000, 5000);

        ShippingIdList::create([
            'product_id'    => $getId,
        ]);
        return $getId;
    }

    public function countorder(){
        $data = ProductPage::where("user_id", Auth::user()->id)->where("status_pay", 0)->count();
        echo $data;
    }

    public function cekStatus($param){
        $data = ProductPage::where("product_id", $param)->first();
        $cekLastUpdate = Carbon::parse($data->created_at);
        $now = Carbon::now();
        $diff = $cekLastUpdate->diffInMinutes($now);
        $code = 400;
        if($diff > 5){
            ProductPage::where("product_id", $param)->update([
                'status_pay'    => 1,
            ]);
            $data = ProductPage::where("product_id", $param)->first();
            $code = 200;
        }
        $statusPay = $data->status_pay;
        $href = "javascript:void(0)";
        switch ($statusPay) {
            case 2:
                $noteStatus = "PAID";
                $bgColor = "success";
                break;
            case 1:
                $noteStatus = "CANCELED";
                $bgColor = "danger";
                break;
            case 0:
                $noteStatus = "PAY NOW";
                $bgColor = "primary";
                $href = url('successorder/'.$param);
                break;
        }
        $result = [
            'code'  => $code,
            'status'    => $statusPay,
            'noteStatus'    => $noteStatus,
            'bgColor'   => $bgColor,
            'href'  => $href,
        ];

        return json_encode($result);
    }

    public function searchHistory(request $request){
        $key = $request->input("key");
        $idUser = Auth::user()->id;
        $data = ProductPage::where("product_id", "like", "%".$key."%")
        ->where("user_id", $idUser)
        ->orderBy("created_at", "desc")->paginate(20);
        return view("history",  compact('data'));

    }
}
