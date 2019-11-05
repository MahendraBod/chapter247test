<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use DataTables;

class OrderController extends Controller
{
    public function index(){
        return view('orders');
    }

    public function getOrderData(){
        //Note: we should write this code in model. i write this for temporary use
        return DataTables::of(Order::query())->make(true);
    }
}
