<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class gallery extends Model
{
    public $fillable = array('product_id','image');
}
