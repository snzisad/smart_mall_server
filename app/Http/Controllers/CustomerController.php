<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ShopingMall;
use App\Category;
use App\User;
use App\Product;
use App\Order;

class CustomerController extends Controller
{
    public function ShopingMallList(){
        $response = ShopingMall::orderBy("name", "asc")->get();
        
        return response()->json([
            "status" => 1, 
            "response" => $response
        ]);
    }
    
    public function ShopingMallShopList($id){
        $response = User::where("type", "Shopkeeper")->where("shopingmall", $id)->with(["shopingmall", 'category'])->orderBy("name", "asc")->get();
        
        return response()->json([
            "status" => 1, 
            "response" => $response
        ]);
    }
    
    public function CategoryList(){
        $response = Category::orderBy("name", "asc")->get();
        
        return response()->json([
            "status" => 1, 
            "response" => $response
        ]);
    }
    
    public function RecentProduct(){
        $response = Product::orderBy("id", "desc")->limit(20)->get();
        
        return response()->json([
            "status" => 1, 
            "response" => $response
        ]);
    }
    
    
    public function ProductDetails($id){
        $response = Product::where("id", $id)->with("shop")->get();
        
        return response()->json([
            "status" => 1, 
            "response" => $response
        ]);
    }
    
    
    public function ProductOrder(Request $requst){
        $this->validate($requst, [
            "user_id" => "required",
            "product_id" => "required|integer",
            "quantity" => "required|integer",
        ]);
        $response = Order::create($requst->all());
        
        return response()->json([
            "status" => 1, 
            "response" => $response
        ]);
    }
}
