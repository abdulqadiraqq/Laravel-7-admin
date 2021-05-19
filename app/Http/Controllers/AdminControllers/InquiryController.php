<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Inquiry;
use Session;

class InquiryController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    
    public function showInquiries(){

        $inquiries = Inquiry::all();
        // dd($inquiries);
        return view('showInquiryDetail',compact('inquiries'));
    }

    public function destroy($id){

        $Inquiry = Inquiry::find($id);
        $Inquiry->delete();
        session::flash('success','Record has been deleted Successfully');
        return redirect('admin/show-inquiries');
    }

    public function getInquiryData(Request $request){

        $id = $request->id;
        $data['records'] = Inquiry::find($id);

        echo json_encode($data);
        //dd($data);

    }

    // public function showNewsletters(){
        
    //     $inquiries = Inquiry::all();
    //     // dd($inquiries);
    //     return view('showInquiryDetail',compact('inquiries'));
    // }
}
