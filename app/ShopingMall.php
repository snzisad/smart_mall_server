<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShopingMall extends Model
{
    protected $table = "shopingmall";

    protected $guarded = ['_token'];
}
