<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Storage;
use App\Category;
use App\Product;
use App\gallery;
use Session;

class ProductController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
        $products = Product::all();
        return view('showProducts',compact('products'));
    }

    public function show(){

        $category = Category::all();
        return view('addProduct',compact('category'));
    }

    public function store(Request $request){

                $this->validate($request,[
                    'cat_id'=> 'required',
                    'title'=> 'required',
                    'new_price'=> 'required',
                ]);
                
                $imageName = "";
                    if ($request->hasFile('image')) {
                            request()->validate([
                                'image' => 'required|image|mimes:jpeg,png,jpg',
                            ]);
                        $image = $request->file('image');
                        $imageName = date('YmdHis') . "." . $image->getClientOriginalExtension();
                        $path = public_path().'/adminTheme/uploads/product';
                        $image->move($path, $imageName);

                    }
                    $saveResult = Product::create([
                        'cat_id' => $request->cat_id,
                        'title' => $request->title,
                        'short_description' => $request->short_description,
                        'long_description' => $request->long_description,
                        'old_price' => $request->old_price,
                        'new_price' => $request->new_price,
                        'imagepath' => $request->imagepath,
                        'image' => $imageName
                    ]);
                    session::flash('success','Record Uploaded Successfully');
                    return redirect('admin/product')->with('success','Record Uploaded Successfully');

    }

    public function edit($id){

        $product = Product::find($id);
        $category = Category::all();
        // dd($category);
        return view('productEdit')->with('product', $product)->with('category', $category);
    }

    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        $imageName = "";
        if ($image1 = $request->file('image')) {
                    request()->validate([
                        'image' => 'required|image|mimes:jpeg,png,jpg',
                    ]);
                $imageName = date('YmdHis') . "." . $image1->getClientOriginalExtension();
                $this->imageName = $imageName;
                $path = public_path().'/adminTheme/uploads/product';
                $image1->move($path, $imageName);
            }
                $updateProduct = Product::where('id', '=', $id)->update([
                    'image' => $imageName,
                    'imagepath' => $request->imagepath,
                    'title' => $request->title,
                    'short_description' => $request->short_description,
                    'long_description' => $request->long_description,
                    'old_price' => $request->old_price,
                    'new_price' => $request->new_price
                ]);
        
        if($updateProduct){
            return back()
                ->with('success','Record Updated Successfully');
            }else{
            return back()
                ->with('error','Record is not Updated');         	
            }

    }


    public function destroy($id)
    {

       $product = Product::find($id);
       $product->delete();
       session::flash('success','Record has been deleted Successfully');
       return redirect('admin/product');
        
    }

    public function galleryDestroy($id){

        $product = gallery::find($id);
        $imageName = $product->image;
       // dd($product->image);
        $product->delete();
        unlink(public_path('adminTheme/uploads/product/'.$imageName));
        return back()->with('success', 'Record has been deleted Successfully');
    }

    public function showGallery($id){
        $products = gallery::where('product_id', $id)->get();
        return view('showGallery')->with('products',$products)->with('id',$id);
    }


    public function storeImages(Request $request)
    {

        $files = $request->file('image');
        $id = $request->product_id;

        if(!empty($files)):
            foreach($files as $file):
              //Storage::put($file->getClientOriginalName(),file_get_contents($file));
              $imageName = date('YmdHis') . "." . $file->getClientOriginalName();
              $path = public_path().'/adminTheme/uploads/product';
              $file->move($path, $imageName);
              gallery::create([
                'product_id' => $id,
                'image' => $imageName
            ]);
               
            endforeach;
        endif;

        return back()->with('success', 'Your files has been successfully uploaded');
    }
}
