<?php

namespace App\Http\Controllers\FrontControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\combinations

class PageController extends Controller
{
    
    public function index(){

    $search = 18;
	$data = \DB::table("combinations")
    ->select("combinations.*")
    ->whereRaw("find_in_set('".$search."',combinations.tags)")
    ->get();

    return $data;

    	
    }
}
