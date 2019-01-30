<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\Staff::class, function (Faker $faker) {
  
  $roles = array('Administrator', 'Doctor', 'Nurse');
  $role = array_rand($roles);
    return [
        'first_name' => str_random(rand(5, 10)),
        'last_name' => str_random(rand(7, 10)),
        'email' => $faker->unique()->safeEmail,
        'role' => $roles[$role],
        
    ];
});
