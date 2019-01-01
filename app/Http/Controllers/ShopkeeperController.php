<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Order;
use App\User;
use Illuminate\Support\Facades\Storage;

class ShopkeeperController extends Controller
{
    public function ProductList($id)
    {

        $response = User::where("phone", $id)->with("product")->first();

        $product = \json_decode($response->product, true);
        $data = [];
        foreach ($product as $p) {
            \array_push($data, $p["id"]);
        }

        $notification = Order::whereIn("product_id", $data)->where("notify", 0)->orderBy("id", "desc")->count();

        $response = Product::where("shop_id", $id)->orderBy("id", "desc")->get();

        return response()->json([
            "status" => 1,
            "notification" => $notification,
            "response" => $response
        ]);
    }

    public function Notification($id)
    {
        $response = User::where("phone", $id)->with("product")->first();

        $product = \json_decode($response->product, true);
        $data = [];
        foreach($product as $p){
            \array_push($data, $p["id"]);
        }

        $order = Order::whereIn("product_id", $data)->orderBy("id", "desc")->get();

        // Order::whereIn("product_id", $data)->where("notify", 0)->update([
        //     "notify" => 1
        // ]);

        return response()->json([
            "status" => 1,
            "response" => $order
        ]);
    }

    public function UpdateProduct(Request $request){
        $this->validate($request, [
            "id" => "required|integer",
            "name" => "required",
            "shop_id" => "required",
            "description" => "required",
            "price" => "required|integer",
        ]);

        $response = Product::where("id", $request->id)->where("shop_id", $request->shop_id)->update($request->all());

        return response()->json([
            "status" => 1,
            "response" => $response
        ]);
    }

    public function UploadProduct(Request $request){
        $this->validate($request, [
            "name" => "required",
            "shop_id" => "required",
            "description" => "required",
            "price" => "required|integer",
            "images" => "required",
        ]);

        $images = explode('|ZISAD|', $request->images);
        $response = Product::create($request->all());
        $imageName = "";

        for ($i = 0; $i < count($images) - 1; $i++) {
            $file = rand() . "_" . time() . ".jpeg";
            $imageName .= $file."|ZISAD|";

            Storage::put('public/images/' . $file, base64_decode($images[$i]));
        }

        Product::where("id", $response->id)->update([
            "picture" => $imageName
        ]);

        return response()->json([
            "status" => 1,
            "response" => $response
        ]);
    }
}
