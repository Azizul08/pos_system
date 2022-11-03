<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->title,
            'price' => $this->faker->randomFloat(2, 0, 1000),
            'quantity' => $this->faker->randomFloat(2, 0, 1000),
            'description' => $this->faker->text,
        ];
    }
}
