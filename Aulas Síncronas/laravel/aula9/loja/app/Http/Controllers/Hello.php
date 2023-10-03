<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Hello extends Controller
{
    public function exibeNome()
    {
        $nome = 'Jordana';
        $sobrenome = 'Alves';

        return view('hello', [
            'nomePessoa' => $nome,
            'sobrenomePessoa' => $sobrenome,
        ]);

        }
    }
