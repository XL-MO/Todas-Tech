<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

// procura por uma tabela chamada: products
class Product extends Model
{
    // quando o nome da tabela é diferente
    // configuração de nome de tabela
    // protected $table = 'tbl_products';

    use HasFactory;

}
