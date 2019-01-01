<?php

namespace App\Http\Controllers;

use Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Mail;

class TestController extends Controller
{
    public function test()
    {
        $zisad = "snzisad@gmail.com,aburaihan965201@gmail.com,";
        // dd($zisad);
        $emails = (explode(",", $zisad));
        // dd($emails);

        // echo mail("snzisad@gmail.com", "Hello", "Hi", "From: noreply@company.com");
        // $this->send_test_mail($emails, "This is test", 50);
        
        Mail::send(["text"=>"mail"], ['name'=>"zisad"], function($message){
            $message->to("snzisad@gmail.com")->subject('Paper Accepted');
            $message->from('bvjbva@gmail.com','Bangladesh Veterinary Journal');
            
        });
    }

    public function send_test_mail($emails, $title, $id)
    {
        $data = [
            'title' => $title,
            'id' => $id
        ];

        try {
            Mail::send('mail.paperAccepted', $data, function ($message) use ($emails) {
                $message->to("snzisad@gmail.com")->subject('Paper Accepted');
                $message->from('bvjbva@gmail.com', 'Bangladesh Veterinary Journal');

            });

        } catch (\Swift_TransportException $e) {
            dd($e);
        }

    }
}