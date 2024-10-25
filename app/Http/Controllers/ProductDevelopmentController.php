<?php

namespace App\Http\Controllers;

use App\Models\Product;

class ProductDevelopmentController extends Controller
{
    public function index()
    {
        $data = Product::all();

        return response($data);
    }
}
