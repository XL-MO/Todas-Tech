<?php

use App\Http\Controllers\Produtos;
use App\Http\Controllers\Hello;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [Produtos::class, 'exibirProdutos']);

Route::get('/hello/{nome}/{sobrenome}', [ Hello:: class, 'exibeNome' ]);


