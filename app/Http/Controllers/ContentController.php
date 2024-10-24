<?php

namespace App\Http\Controllers;

use App\Models\Content;

class ContentController extends Controller
{
    public function index()
    {
        $data = Content::all();

        return response($data);
    }
}
