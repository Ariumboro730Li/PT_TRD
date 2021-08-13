<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductIdList extends Model
{
    use HasFactory;
    protected $table = "product_id_list";
    protected $guarded = [];
}
