<?php

namespace App\Repositories;

use App\Models\Category;
use App\Models\Order;

class AppRepository
{
    public array $data = [];

    public function getReport($request)
    {
        $this->data = [
            'at' => $request->input('dateAt'),
            'by' => $request->input('dateBy'),
            'categories' => static::getCategories(),
        ];

        try {
            $query = Order::join('managers', 'orders.manager_id', '=', 'managers.id')
                ->join('categories', 'orders.category_id', '=', 'categories.id')
                ->selectRaw('CONCAT(managers.name, " ", managers.surname) AS manager');;
            foreach ($this->data['categories'] as  $category) {
                $query->selectRaw("SUM(CASE WHEN categories.category = '$category' THEN orders.category_id ELSE 0 END) AS value");
            }
            $query->selectRaw('SUM(orders.category_id) AS total')
                ->whereBetween('orders.date_closed', [$this->data['at'], $this->data['by']])
                ->groupBy('managers.id')->get();

            $result = $query->get();
            $this->data['data'] = $result;
            return $this->data;

        } catch (\Exception $e) {
            report($e);
            dd('Запрос вернул ошибку: ' . $e->getMessage());
        }

    }

    public static function getCategories(): array
    {
        return Category::query()->pluck('category')->all();
    }
}
