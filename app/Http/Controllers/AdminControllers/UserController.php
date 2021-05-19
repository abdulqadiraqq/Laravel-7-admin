<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Session;


class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    
    public $imageName = '';
    public function showView(){

    	$homedata = User::all();

    	return view('showUserView',compact('homedata'));
    }


    public function showUserForm(){

    	return view('showUserForm');	
    }

    public function createUser(Request $request){

    	//$user = User::create();
        //dd($request->input('userimage'));

      //  $this->validate($request,[
      //    'username'=>'required|max:8',
      //    'password'=>'required'
      // ]);

        $user = new User;
    	
    	$imgName = "";

        request()->validate([
 
        'name' => 'required|min:3',
        'email' => 'required|email|unique:users',
        'password' => 'required|min:8',
        'phone' => 'required|integer|min:10',
 
       ]);

    	$user->name = $request->input('name');
    	$user->lastname = $request->input('lastname');
    	$user->email = $request->input('email');
    	$user->country = $request->input('country');
    	$user->city = $request->input('city');
    	$user->address = $request->input('address');
    	$user->phone = $request->input('phone');
    	$user->zipcode = $request->input('zipcode');
    	$user->state = $request->input('state');
    	$user->password = $request->input('password');

        //dd( $request->input('image'));
      if ($image = $request->file('image')) {

                    request()->validate([
                        'image' => 'required|image|mimes:jpeg,png,jpg',
                    ]);

                   $imageName = date('YmdHis') . "." . $image->getClientOriginalExtension();
                   $imgName = $imageName;
                   $path = public_path().'/adminTheme/uploads/users';
                   $image->move($path, $imageName);
              //     dd($imgName);
            }
            
            $user->image = $imgName;

    	    $user->save();
    	    return back()->with('success','User Created Successfully');


    }


    public function edit($id){


        $user = User::find($id);

        return view('useredit',compact('user'));
    }

    public function update(Request $request, $id)
    {

        $user = User::find($id);

        request()->validate([
 
        'name' => 'required|min:3',
        'email' => 'required|email',
        'password' => 'required|min:8',
        'phone' => 'required|integer|min:10',
 
       ]);

        $oldPassword = $user->password;
        $newPassword = $request->input('password');

        if($oldPassword != $newPassword ){

            $user->password = $request->input('password');

        }


        $user->name = $request->input('name');
        $user->lastname = $request->input('lastname');
        $user->email = $request->input('email');
        $user->country = $request->input('country');
        $user->city = $request->input('city');
        $user->address = $request->input('address');
        $user->phone = $request->input('phone');
        $user->zipcode = $request->input('zipcode');
        $user->state = $request->input('state');

        

        if ($image = $request->file('image')) {

                    request()->validate([
                        'image' => 'required|image|mimes:jpeg,png,jpg',
                    ]);

                   $imageName = date('YmdHis') . "." . $image->getClientOriginalExtension();
                   $this->imageName = $imageName;
                   $path = public_path().'/adminTheme/uploads/users';
                   $image->move($path, $imageName);
            }

        if($this->imageName != "")
        {
            $user->image = $this->imageName;
        }

        $user->save();

        //$this->cmsupdate($request, $id, $cms);

        return back()
                ->with('success','Record updated Successfully');

    }


    public function destroy($id)
    {

       $user = User::find($id);
       $user->delete();
       session::flash('success','Record has been deleted Successfully');
       return redirect('admin/users');
        
    }
}
