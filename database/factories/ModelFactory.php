<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\User::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'address' => $faker->address,
        'type' => 'Shopkeeper',
        'phone' => rand(111111, 999999),
        'email' => $faker->unique()->safeEmail,
        'remember_token' => str_random(10),
        'shopname' => str_random(6),
        'shopno' => rand(100, 200),
        'shopingmall' => rand(1, 8),
        'category' => rand(1, 7),
    ];
});

$factory->define(App\Product::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => str_random(6),
        'shop_id' => rand(16, 36),
        'size' => rand(0,5),
        'price' => rand(100, 5000),
        'description' => str_random(200),
    ];
});

$factory->define(App\Order::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'user_id' => rand(5, 15),
        'product_id' => rand(1, 50),
        'quantity' => rand(0,5),
    ];
});
