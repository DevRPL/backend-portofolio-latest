<?php

namespace App\Http\Controllers;

use App\Models\Portofolio;

class PortofolioController extends Controller
{
    public function index()
    {
        $data = Portofolio::all();

        return response($data);
    }
}
