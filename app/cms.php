<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cms extends Model
{
    public $fillable = array('id','pagename','pagetitle','content','content2','image1','image2','imagepath','videourl');
}
