<?php

use App\Http\Controllers\ContentController;
use App\Http\Controllers\PortofolioController;
use App\Http\Controllers\SkillController;
use Illuminate\Support\Facades\Route;

Route::get('product-development', [ContentController::class, 'index']);
Route::get('contents', [ContentController::class, 'index']);
Route::get('portofolios', [PortofolioController::class, 'index']);
Route::get('skills', [SkillController::class, 'index']);


