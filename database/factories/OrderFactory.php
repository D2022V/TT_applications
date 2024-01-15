<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $date_create = fake()->dateTimeBetween('- 12 month');
        $date_close = null;
        $status = fake()->numberBetween(1, 3);
        if ($status === 3) {
            $date_close = fake()->dateTimeInInterval($date_create, '+20 days');
        }
        return [
            'content' => fake()->realText(20,1),
            'status_id' => $status,
            'manager_id' => fake()->numberBetween(1, 4),
            'category_id' => fake()->numberBetween(1, 4),
            'date_closed' => $date_close,

        ];
    }
}
