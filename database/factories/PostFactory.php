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

$factory->define(App\Models\Post::class, function (Faker $faker) {

    return [
        'user_id' => $faker->numberBetween(1, 10),
        'title' => $faker->unique()->sentence(6, true),
        'content' => $faker->paragraph(),
        'overview' => $faker->sentences(2,true),
        'status' => 1
    ];
});