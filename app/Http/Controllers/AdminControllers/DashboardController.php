<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Logo;
use App\User;
use App\Product;
use App\Inquiry;
use DB;

class DashboardController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function initContent(){

        $users = User::all();
        $totalUsers = count($users);

        $products = Product::all();
        $totalProducts = count($products);

        // $inquiries = Inquiry::all();
        // $totalInquiries = count($inquiries);

        $inquiries = DB::select('select * from inquiries');
        $totalInquiries = count($inquiries);

        //dd($totalProducts);
    	return view('dashboard')
        ->with('totalUsers',$totalUsers)
        ->with('totalProducts',$totalProducts)
        ->with('totalInquiries',$totalInquiries);
    }



    function upload(Request $request)
    {
     $image = $request->file('file');

     $imageName = time() . '.' . $image->extension();

     $image->move(public_path('images'), $imageName);

     return response()->json(['success' => $imageName]);
    }

    function fetch()
    {
     $images = \File::allFiles(public_path('images'));
     $output = '<div class="row">';
     foreach($images as $image)
     {
      $output .= '
      <div class="col-md-2" style="margin-bottom:16px;" align="center">
                <img src="'.asset('images/' . $image->getFilename()).'" class="img-thumbnail" width="175" height="175" style="height:175px;" />
                <button type="button" class="btn btn-link remove_image" id="'.$image->getFilename().'">Remove</button>
            </div>
      ';
     }
     $output .= '</div>';
     echo $output;
    }

    function delete(Request $request)
    {
     if($request->get('name'))
     {
      \File::delete(public_path('images/' . $request->get('name')));
     }
    }
}
