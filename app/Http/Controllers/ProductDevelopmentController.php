<?php

namespace App\Http\Controllers;

use App\Models\Product;

class ProductDevelopmentController extends Controller
{
    public function indec()
    {
        $data = Product::all();

        return response($data);
    }
}
