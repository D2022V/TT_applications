@extends('layouts.layout')

@section('content')
    <div class="container mt-3">
        <h2>Ваш отчет за период с {{ $data['at'] }} по {{ $data['by'] }}: </h2>
        <table class="table table-bordered table-sm table-striped table-hover ">
            <thead class="table-info text-center">
            <tr>
                <th rowspan="2">Ф.И.О</th>
                <th colspan="4">Категории</th>
                <th rowspan="2">Всего</th>
            </tr>
            <tr>
                @foreach($data['categories'] as $category)
                    <td>{{ $category }}</td>
                @endforeach
            </tr>
            </thead>
            <tbody>
            @foreach($data['data'] as $key => $item)
                <tr>
                    <td>{{ $item->manager }}</td>
                    <td>{{ $item->value }}</td>
                    <td>{{ $item->total}}</td>
                </tr>

            @endforeach
            </tbody>
        </table>
    </div>

@endsection

