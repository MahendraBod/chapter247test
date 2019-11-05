<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Order;
use Faker\Generator as Faker;

$factory->define(Order::class, function (Faker $faker) {
    return [
        'invoice_number' => $faker->randomNumber($nbDigits = NULL, $strict = false),
        'total_amount' => $faker->numberBetween($min = 1000, $max = 9000),
        'status' => $faker->randomElement($array = array ('new','processed')),
    ];
});
