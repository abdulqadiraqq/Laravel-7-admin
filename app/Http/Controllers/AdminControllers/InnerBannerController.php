<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\InnerBanner;
use Session;

class InnerBannerController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    
    public function index()
    {
        $banners = InnerBanner::all();
        return view('showbanners',compact('banners'));
    }

  
    public function create()
    {
        //
    }

   
    public function store(Request $request)
    {
        $this->validate($request,[
            'title'=> 'required',
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

            $saveResult = InnerBanner::create([
                'title' => $request->title,
                'image' => $imageName
            ]);

            session::flash('success','Record Uploaded Successfully');
            return redirect('admin/banner')->with('success','Record Uploaded Successfully');
    }

    
    public function show()
    {

        return view('addbanner');
    }

    
    public function edit($id)
    {
        $banner = InnerBanner::find($id);
        // dd($category);
        return view('bannerEdit')->with('banner', $banner);
    }

   
    public function update(Request $request, $id)
    {
        $product = InnerBanner::find($id);

        $imageName = "";

        if ($image1 = $request->file('image')) {
                    request()->validate([
                        'image' => 'required|image|mimes:jpeg,png,jpg',
                    ]);

                $imageName = date('YmdHis') . "." . $image1->getClientOriginalExtension();
                $this->imageName = $imageName;
                $path = public_path().'/adminTheme/uploads/homeslider';
                $image1->move($path, $imageName);

                $updateProduct = InnerBanner::where('id', '=', $id)->update([
                    'image' => $imageName,
                    'title' => $request->title
                ]);
            }else{
                $updateProduct = InnerBanner::where('id', '=', $id)->update([
                    'title' => $request->title
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
        $banner = InnerBanner::find($id);
        $banner->delete();
       session::flash('success','Record has been deleted Successfully');
       return redirect('admin/banner');
    }
}
