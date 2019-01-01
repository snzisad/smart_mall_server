<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ShopingMall;
use App\Category;
use App\User;
use SoapClient;

class AdminController extends Controller
{
    public function addShopingMall(Request $request){
        $this->validate($request, [
            "name" => "required|unique:shopingmall"
        ]);

        $response = ShopingMall::create($request->all());

        return response()->json([
            "status" => 1,
            "response"=> $response
        ]);

    }
    
    public function addCategory(Request $request){
        $this->validate($request, [
            "name" => "required|unique:category"
        ]);

        $response = Category::create($request->all());

        return response()->json([
            "status" => 1,
            "response"=> $response
        ]);

    }
    
    public function ChangePassword(Request $request){
        $this->validate($request, [
            "uid" => "required",
            "password" => "required",
        ]);

        $response = User::where("phone", $request->uid)->update([
            "password"=> bcrypt($request->password)
        ]);

        if ($response == 1) {
            $this->sendPasswordResetMessage($request->uid, $request->password);
        }

        return response()->json([
            "status"=> 1,
            "response"=> $response,
        ]);

    }

    public function UserInfo($id){
        $response = User::where("phone", $id)->with(['shopingmall', 'category'])->first();

        return response()->json([
            "status" => 1,
            "response" => $response,
        ]);
    }

    public function AcceptShopkeeper($id){
        $password = rand(111111,999999);

        $response = User::where("phone", $id)->update([
            "password" => bcrypt($password)
        ]);

        if($response == 1){
            $user = User::where("phone", $id)->first();
            $this->sendWelcomeMessage($id, $password, $user->type);
        }

        return response()->json([
            "status" => 1,
            "response" => $response
        ]);
    }

    public function ShopkeeperRequest(){
        $response = User::where("type", "Shopkeeper")->where("password", "1234")->with(['shopingmall', 'category'])->get();

        return response()->json([
            "status" => 1,
            "response" => $response,
        ]);
    }

    public function sendWelcomeMessage($phone, $password, $type){
        try {
            $soapClient = new SoapClient("https://api2.onnorokomSMS.com/sendSMS.asmx?wsdl");
            $paramArray = array(
                'userName' => "01867301260",
                'userPassword' => "6371",
                'mobileNumber' => $phone,
                'smsText' => "Hello, welcome to Smart Mall. Please use the following information to login \nID: ". $phone ."\nPasword: ". $password ."\nType: ".$type,
                'type' => "TEXT",
                'maskName' => '',
                'campaignName' => 'Attendence',
            );
            $value = $soapClient->__call("OneToOne", array($paramArray));
            
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function sendPasswordResetMessage($phone, $password){
        try {
            $soapClient = new SoapClient("https://api2.onnorokomSMS.com/sendSMS.asmx?wsdl");
            $paramArray = array(
                'userName' => "01867301260",
                'userPassword' => "6371",
                'mobileNumber' => $phone,
                'smsText' => "Hello Smart Mall user, your password is changed. Your new password is: ". $password,
                'type' => "TEXT",
                'maskName' => '',
                'campaignName' => 'Attendence',
            );
            $value = $soapClient->__call("OneToOne", array($paramArray));
            
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }
}
