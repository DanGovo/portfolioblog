<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\BlacklistedClient;
use Faker\Generator as Faker;

$factory->define(BlacklistedClient::class, function (Faker $faker) {

    $accnt_types = AccountType::pluck('id');
    $accnt_mgrs = AccountManager::pluck('id');

    return [
        'firstname' => $faker->firstName,
        'lastname' => $faker->lastName,
        'institution' => $faker->company,
        'account_type_id' => $this->faker->randomElement($accnt_types),
        'manager_id' =>$this->faker->randomElement($accnt_mgrs),
        'date_blacklisted' => $faker->date($format = 'D-m-y', $max = '2021',$min = '2018'),
        'created_at' => $faker->date('Y-m-d H:i:s'),
        'updated_at' => $faker->date('Y-m-d H:i:s')
    ];
});
