<?php

use Illuminate\Http\Request;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get("test", function(){
	return response()->json([
		"status" => "1",
		"message" => "Hello"
	]);
});

Route::post("test", function(Request $request){
	// $this->validate($request, [
	// 	"images" => "required"
	// ]);

	$images = explode('|ZISAD|', $request->images);


	// $file = rand() . "_" . time() . ".jpeg";
	// Storage::put('public/images/' . $file, base64_decode($images[1]));

	for($i = 0; $i<count($images)-1; $i++){
		$file = rand()."_".time().".jpeg";
		Storage::put('public/images/'.$file, base64_decode($images[$i]));
	}

	return response()->json([
		"status" => "1",
		"message" => "Success"
	]);

});

// Admin Panel
Route::post("addshopingmall", "AdminController@addShopingMall");
Route::post("addcategory", "AdminController@addCategory");
Route::post("changepassword", "AdminController@ChangePassword");
Route::get("userinfo/{id}", "AdminController@UserInfo");
Route::get("shopkeeperrequest", "AdminController@ShopkeeperRequest");
Route::get("shopkeeper/accept/{id}", "AdminController@AcceptShopkeeper");

// Shopkeeper
Route::get("shop/product/list/{id}", "ShopkeeperController@ProductList");
Route::get("shop/notification/{id}", "ShopkeeperController@Notification");
Route::post("product/update", "ShopkeeperController@UpdateProduct");
Route::post("product/upload", "ShopkeeperController@UploadProduct");

//general
Route::get("shopingmall/list", "CustomerController@ShopingMallList");
Route::get("shopingmall/shoplist/{id}", "CustomerController@ShopingMallShopList");
Route::get("category/list", "CustomerController@CategoryList");
Route::get("product/recent", "CustomerController@RecentProduct");
Route::get("product/details/{id}", "CustomerController@ProductDetails");
Route::post("product/order", "CustomerController@ProductOrder");

Route::post("register", "Auth\RegisterController@register");
Route::post("login", "Auth\LoginController@login");

Route::middleware("auth:api")->get("/passport/user", function(Request $request){
	return $request->user();
});