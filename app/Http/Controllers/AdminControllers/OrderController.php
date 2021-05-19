<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Order;
use Session;

class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    
    public function index()
    {
        $orders = Order::all();
        return view('showOrder',compact('orders'));
    }

   
    public function create()
    {
        //
    }

   
    public function store(Request $request)
    {
        //
    }

   
    public function show($id)
    {
        $order = Order::find($id);
        return view('ordershow',compact('order'));
    }

   
    public function edit($id)
    {
        //
    }

    
    public function update(Request $request, $id)
    {
        //
    }

   
    public function destroy($id)
    {
       $order = Order::find($id);
       $order->delete();
       session::flash('success','Record has been deleted Successfully');
       return redirect('admin/order');
    }
}
