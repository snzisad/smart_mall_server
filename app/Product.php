<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = "product";

    protected $guarded = ['_token', 'images'];

    public function shop(){
    	return $this->hasOne(User::class, "phone", "shop_id")->with(["shopingmall", "category"]);
    }
}
