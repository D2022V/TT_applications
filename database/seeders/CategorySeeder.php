<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
//        $categories = ['disconnected', 'check/cheapening', 'tech_question', 'other'];
        $categories = ['Отключение', 'Проверка/удешевлени', 'Тех. вопрос', 'Прочее'];
        foreach ($categories as $category) {
            DB::table('categories')->insert([
                'category' => $category,
            ]);
        };
    }
}
