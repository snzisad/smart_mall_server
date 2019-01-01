<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = "order";

    protected $guarded = ['_token'];

    protected $with = ['customer', 'product'];

    public function customer(){
    	return $this->hasOne(User::class, "phone", "user_id");
    }
    
    public function product(){
    	return $this->hasOne(Product::class, "id", "product_id");
    }
}
