<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Logo;


class LogoController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    
    public function addlogo(){
        $logoImage = Logo::all('image');
    	return view('logo',compact('logoImage'));
    }
    

    public function update_logo(Request $request){

    	if ($request->hasFile('image')) {

            $request->validate([
                'image' => 'required|image|mimes:jpeg,png,jpg', // Only allow .jpg, .bmp and .png file types.
            ]);

				$name = $request->name;
		    	$image = $request->file('image');
		    	$imageName = time() . '.' .$image->extension();
                
		    	$path = public_path().'/adminTheme/uploads/logo';
                $path2 = '/adminTheme/uploads/logo';
		    	$image->move($path, $imageName);
		    	
                $Logo = Logo::find(1);
                if($Logo == NULL){

                    $logoResult = Logo::create([
                        'image' => $imageName,
                        'path' => $path2
                    ]);

                }else{
                    Logo::where('id', '=', 1)->update([
                        'image' => $imageName,
                        'path' => $path2
                    ]);

                }

		    	

       		return back()
                ->with('success','Image Uploaded Successfully');
       		}else{

			 return back()
                ->with('error','Image is not Uploaded');         	
            }


         }

        
    



    public function store(Request $request)
    {
        // Validate the inputs
        $request->validate([
            'name' => 'required',
        ]);

        // ensure the request has a file before we attempt anything else.
        if ($request->hasFile('file')) {

            $request->validate([
                'image' => 'mimes:jpeg,bmp,png' // Only allow .jpg, .bmp and .png file types.
            ]);

            // Save the file locally in the storage/public/ folder under a new folder named /product
            $request->file->store('product', 'public');

            // Store the record, using the new file hashname which will be it's new filename identity.
            $product = new Product([
                "name" => $request->get('name'),
                "file_path" => $request->file->hashName()
            ]);
            $product->save(); // Finally, save the record.
        }

        return view('products.create');

    }
}
