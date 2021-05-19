<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    public $fillable = array('id','title','description','image');
}
