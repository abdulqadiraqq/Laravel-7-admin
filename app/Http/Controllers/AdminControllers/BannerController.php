<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Slider;
use Session;

class BannerController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
   
    public function index()
    {
        $sliders = Slider::all();
        return view('sliders',compact('sliders'));
    }

   
    public function create()
    {
        //
    }

  
    public function store(Request $request)
    {
        $this->validate($request,[
            'title'=> 'required',
            'description'=> 'required',
        ]);
        
        $imageName = "";

            if ($request->hasFile('image')) {
                    request()->validate([
                        'image' => 'required|image|mimes:jpeg,png,jpg',
                    ]);

                $image = $request->file('image');
                $imageName = date('YmdHis') . "." . $image->getClientOriginalExtension();
                $path = public_path().'/adminTheme/uploads/homeslider';
                $image->move($path, $imageName);
            }

            $saveResult = Slider::create([
                'title' => $request->title,
                'description' => $request->description,
                'image' => $imageName
            ]);

            session::flash('success','Record Uploaded Successfully');
            return redirect('admin/slider')->with('success','Record Uploaded Successfully');
    }

   
    public function show()
    {
        return view('addsliders');
    }

    
    public function edit($id)
    {
        $slider = Slider::find($id);
        // dd($category);
        return view('sliderEdit')->with('slider', $slider);
    }

   
    public function update(Request $request, $id)
    {
        $product = Slider::find($id);

        $imageName = "";
        if ($image1 = $request->file('image')) {
                    request()->validate([
                        'image' => 'required|image|mimes:jpeg,png,jpg',
                    ]);
                $imageName = date('YmdHis') . "." . $image1->getClientOriginalExtension();
                $this->imageName = $imageName;
                $path = public_path().'/adminTheme/uploads/homeslider';
                $image1->move($path, $imageName);

                $updateProduct = Slider::where('id', '=', $id)->update([
                    'image' => $imageName,
                    'title' => $request->title,
                    'description' => $request->description
                ]);
            }else{
                $updateProduct = Slider::where('id', '=', $id)->update([
                    'title' => $request->title,
                    'description' => $request->description
                ]);
            }
                
        
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
       $slider = Slider::find($id);
       $slider->delete();
       session::flash('success','Record has been deleted Successfully');
       return redirect('admin/slider');
    }
}
