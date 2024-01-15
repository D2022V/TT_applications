<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $statuses = ['новая', 'в работе', 'завершена'];

        foreach ($statuses as $status) {
            DB::table('statuses')->insert([
                'status' => $status,
            ]);
        };
    }
}
