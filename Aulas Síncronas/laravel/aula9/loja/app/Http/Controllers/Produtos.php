<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Produtos extends Controller
{
    public function exibirProdutos()
    {
        //capturar do banco de dados
        
        return view('minhapagina');
    }
}

