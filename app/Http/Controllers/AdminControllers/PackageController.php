<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Package;
use Session;

class PackageController extends Controller
{
    
    public function index()
    {

        $Packages = Package::all();

        return view('showPackages',compact('Packages'));
    }

   
    public function create()
    {
        return view('addpackage');
    }

    
    public function store(Request $request)
    {
        //dd($request);

        $this->validate($request,[
            'title'=> 'required',
            'price'=> 'required',
        ]);
            
            $saveResult = Package::create([
                'title' => $request->title,
                'price' => $request->price,
                'description' => $request->description
            ]);
            session::flash('success','Record Uploaded Successfully');
            return redirect('admin/packages')->with('success','Record Uploaded Successfully');
    }

   
    public function show($id)
    {
        
    }

   
    public function edit($id)
    {
        $package = Package::find($id);
        //dd($package);
        return view('packageEdit')->with('package', $package);
    }

   
    public function update(Request $request, $id)
    {
        $product = Package::find($id);
        $updateProduct = Package::where('id', '=', $id)->update([
            'title' => $request->title,
            'price' => $request->price,
            'description' => $request->description
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
        $package = Package::find($id);
        $package->delete();
        session::flash('success','Record has been deleted Successfully');
        return redirect('admin/packages');
    }
}
