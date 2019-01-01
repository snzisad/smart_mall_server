<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use SoapClient;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'address' => 'required|string|max:255',
            'phone' => 'required|string|max:255',
            'type' => 'required|string|max:255',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
        ]);
    }

    protected function register(Request $request){

        $this->validate($request, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'address' => 'required|string|max:255',
            'phone' => 'required|string|max:255|unique:users',
            'type' => 'required|string|max:255',
        ]);

        $type = $request->type;

        if($type == "Shopkeeper"){
            $this->validate($request, [
                'shopname' => 'required|string|max:255',
                'shopingmall' => 'required|integer',
                'category' => 'required|integer',
            ]);

            User::create($request->all());

            return response()->json([
                "status" => 1,
                "message" => "You will receive user id and password after admin verification."

            ]);
        }
        else{
            $password = rand(111111,999999);

            User::create([
                'name' => $request->name,
                'email' => $request->email,
                'address' => $request->address,
                'phone' => $request->phone,
                'type' => $type,
                'password' => bcrypt($password),
            ]);

            $this->sendWelcomeMessage($request->phone, $password, $type);

            return response()->json([
                "status" => 1,
                "message" => "User ID and password was sent to your phone. Please use them to login"
            ]);
        }

        return response()->json([
            "status" => 0,
        ]);

    }

    public function sendWelcomeMessage($phone, $password, $type)
    {
        try {
            $soapClient = new SoapClient("https://api2.onnorokomSMS.com/sendSMS.asmx?wsdl");
            $paramArray = array(
                'userName' => "01867301260",
                'userPassword' => "6371",
                'mobileNumber' => $phone,
                'smsText' => "Hello, welcome to Smart Mall. Please use the following information to login \nID: " . $phone . "\nPasword: " . $password . "\nType: " . $type,
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
