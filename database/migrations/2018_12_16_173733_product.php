<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Product extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable("product")){
            Schema::create('product', function (Blueprint $table) {
                $table->increments('id');
                $table->string('name');
                $table->string('shop_id');
                $table->string('size');
                $table->string('price');
                $table->text('description');
                $table->string('picture');
                $table->rememberToken();
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
         Schema::dropIfExists('product');
    }
}
