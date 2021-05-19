<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    public $fillable = array('title','price','description');
}
