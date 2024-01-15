<?php

namespace App\Http\Controllers;

use App\Http\Requests\DateRequest;
use App\Repositories\AppRepository;

class AppController extends Controller
{
    protected AppRepository $appRepository;

    public function __construct(AppRepository $appRepository)
    {
        $this->appRepository = $appRepository;
    }

    public function report(DateRequest $request)
    {
        $data = $this->appRepository->getReport($request);
        return view('reports', ['data' => $data]);
    }
}
