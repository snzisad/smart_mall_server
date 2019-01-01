<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
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
        $this->middleware('guest')->except('logout');
    }

    public function login(Request $request){
        $this->validate($request, [
            'phone' => 'required|string|max:255',
            'password' => 'required|string',
            'type' => 'required|string|max:255',
        ]);

        if(Auth::guard()->attempt([
            'phone'=>$request->phone,
            'password'=>$request->password,
            'type'=>$request->type,
        ])){

            return response()->json([
                "status" => 1,
                "message" => "Login Success"

            ]);
        }

        return response()->json([
            "status" => 0,
            "message" => "Login Fail: "

        ]);
    }
}
