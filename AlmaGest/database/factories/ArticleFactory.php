<?php

namespace Database\Factories;

use App;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Article>
 */
class ArticleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->name(),
            'description' => fake()->text(150),
            'price_min' => fake()->numberBetween(0, 9999999999),
            'price_max' => fake()->numberBetween(0, 9999999999),
            'color_name' => fake()->colorName(),
            'weight' => fake()->numberBetween(0, 9999999999),
            'size' => fake()->text(20),
            'family_id' => App\Models\Family::all()->random()->id,
        ];
    }
}
