<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\cms;
use Session;

class HomePageController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

     public $imageName = '';
     public $imageName2 = '';
     public $videoName = '';


  
    public function index()
    {
        //$homedata = cms::all();

        $homedata = DB::table('cms')->where('pagename','home')->get();
        return view('homepage',compact('homedata'));
    }

    public function about()
    {
        //$homedata = cms::all();

        $aboutpage = DB::table('cms')->where('pagename','about')->get();
        return view('aboutpage',compact('aboutpage'));
    }

    public function contact()
    {
        //$homedata = cms::all();

        $contactdata = DB::table('cms')->where('pagename','contact')->get();
        return view('contactpage',compact('contactdata'));
    }

  
    public function create()
    {
         
         return view('addcontent');
    }

   
    public function store(Request $request)
    {

        $uriSegment = $request->input('url');
        //dd($uriSegment);

       $this->addContent($request);

       session::flash('success','Record Uploaded Successfully');

       return redirect('admin/'.$uriSegment)->with('success','Record Uploaded Successfully');
    }

 
    public function show($id)
    {
        
    }

  
    public function edit($id)
    {

        //dd($id);
        $cms = cms::find($id);
        return view('cmsedit',compact('cms'));
    }

   
    public function aboutEdit($id)
    {
        //dd($id);
        $cms = cms::find($id);
        return view('cmsedit',compact('cms'));
    }

    public function contactEdit($id)
    {
        //dd($id);
        $cms = cms::find($id);
        return view('cmsedit',compact('cms'));
    }

   
    public function update(Request $request, $id)
    {

        $cms = cms::find($id);

        $this->cmsupdate($request, $id, $cms);

        return back()
                ->with('success','Record Uploaded Successfully');

    }

    public function cmsupdate(Request $request, $id, $cms){

            $this->validateFiles($request, $id, $cms);

            if($this->imageName != "")
            {
                $cms->image1 = $this->imageName;
            }

           if($this->imageName2 != "")
           {
                $cms->image2 = $this->imageName2;
           }

           if($this->videoName != "")
           {
                $cms->videourl = $this->videoName;
           }

            $cms->save();
       

    }

    public function validateFiles(Request $request, $id, $cms){

            $imageName = "";
            $imageName2 = "";
            $videoName = "";

        
            $cms->pagetitle = $request->input('pagetitle');
            $cms->content = $request->input('content');
            $cms->content2 = $request->input('content2');
            $cms->imagepath = $request->input('imagepath');

            if ($image1 = $request->file('image1')) {

                    request()->validate([
                        'image1' => 'required|image|mimes:jpeg,png,jpg',
                    ]);

                   $imageName = date('YmdHis') . "." . $image1->getClientOriginalExtension();
                   $this->imageName = $imageName;
                   $path = public_path().'/adminTheme/uploads/cms';
                   $image1->move($path, $imageName);
            }


           if ($image2 = $request->file('image2')) {
                    request()->validate([
                        'image2' => 'required|image|mimes:jpeg,png,jpg',
                   ]);

                
                $imageName2 = date('YmdHis') . "." . $image2->getClientOriginalExtension();
                $this->imageName2 = $imageName2;
                $path2 = public_path().'/adminTheme/uploads/cms';
                $image2->move($path2, $imageName2);

            }

           if ($videourl = $request->file('videourl')) {

                    $this->validate($request,[
                        'videourl'=> 'required|mimes:mp4,ppx,pdf,ogv,jpg,webm|max:1999',
                    ]);

                $filenameWithExt = $request->file('videourl')->getClientOriginalName();
                $videoName = $filenameWithExt;
                $this->videoName = $videoName;
                $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
                $extension = $request->file('videourl')->getClientOriginalExtension();
                $fileNameToStore = $filename. '_'.time().'.'.$extension;

                $path3 = public_path().'/adminTheme/uploads/cms';
                $videourl->move($path3, $videoName);

           }

          // dd($imageName);
    }

   
    public function destroy($id)
    {

       $cms = cms::find($id);
       $cms->delete();
       session::flash('success','Record has been deleted Successfully');
       return redirect('admin/home');
        
    }

    
    public function aboutDestroy($id)
    {

       $cms = cms::find($id);
       $cms->delete();
       session::flash('success','Record has been deleted Successfully');
       return redirect('admin/about');
        
    }

    public function contactDestroy($id)
    {

       $cms = cms::find($id);
       $cms->delete();
       session::flash('success','Record has been deleted Successfully');
       return redirect('admin/contact');
        
    }


    public function addContent(Request $request){

        $imageName = "";
        $imageName2 = "";
        $videoName = "";
       
            if ($image1 = $request->file('image1')) {
                     request()->validate([
                        'image1' => 'required|image|mimes:jpeg,png,jpg',
                    ]);

                  
                   $imageName = date('YmdHis') . "." . $image1->getClientOriginalExtension();
                   $path = public_path().'/adminTheme/uploads/cms';
                   $image1->move($path, $imageName);
            }


           if ($image2 = $request->file('image2')) {
                    request()->validate([
                        'image2' => 'required|image|mimes:jpeg,png,jpg',
                   ]);
                $imageName2 = date('YmdHis') . "." . $image2->getClientOriginalExtension();
                $path2 = public_path().'/adminTheme/uploads/cms';
                $image2->move($path2, $imageName2);

            }

           if ($videourl = $request->file('videourl')) {

                    $this->validate($request,[
                        'videourl'=> 'required|mimes:mp4,ppx,pdf,ogv,jpg,webm|max:1999',
                    ]);

                $filenameWithExt = $request->file('videourl')->getClientOriginalName();
                $videoName = $filenameWithExt;
                $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
                $extension = $request->file('videourl')->getClientOriginalExtension();
                $fileNameToStore = $filename. '_'.time().'.'.$extension;

                $path3 = public_path().'/adminTheme/uploads/cms';
                $videourl->move($path3, $videoName);

           }

          // $home = cms::create($request->all());
           $saveResult = cms::create([
                'pagename' => $request->pagename,
                'pagetitle' => $request->pagetitle,
                'content' => $request->content,
                'content2' => $request->content2,
                'image1' => $imageName,
                'image2' => $imageName2,
                'imagepath' => $request->imagepath,
                'videourl' => $videoName
            ]);
    }


}
