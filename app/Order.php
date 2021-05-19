<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public $fillable = array('id','user_id','package_id','package_name','package_price','billing_fullname','billing_email','grand_total','payment_method');
}
