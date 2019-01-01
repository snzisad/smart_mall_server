<?php

namespace App;

use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    // protected $fillable = [
    //     'name', 'email', 'password',
    // ];

    protected $guarded = ['_token'];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function shopingmall(){
        return $this->hasOne(ShopingMall::class, "id", "shopingmall");
    }

    public function category(){
        return $this->hasOne(Category::class, "id", "category");
    }

    public function product(){
        return $this->hasMany(Product::class, "shop_id", "phone");
    }
}
