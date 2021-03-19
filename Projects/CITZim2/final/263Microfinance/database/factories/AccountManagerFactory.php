<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\AccountManager;
use Faker\Generator as Faker;

$factory->define(AccountManager::class, function (Faker $faker) {

    return [
        'name' => $faker->name,
        'created_at' => $faker->date('Y-m-d H:i:s'),
        'updated_at' => $faker->date('Y-m-d H:i:s')
    ];
});
