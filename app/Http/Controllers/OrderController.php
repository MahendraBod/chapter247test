<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use App\OrderItem;
use DataTables;

class OrderController extends Controller
{
    public function index(){
        return view('orders');
    }

    public function getOrderData(){
        //Note: we should write this code in model. i write this for temporary use
        return Datatables::of(Order::query())
            ->addColumn('action', function ($order) {
                return '<a href="'.url("orders/".$order->id).'" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> View</a>';
            })
            ->make(true);
    }

    public function viewOrder($id){
        return view('order_items');
    }

    public function getOrderItems($id){
        //$order = Order::find($id)->load(['orderItems']);
        return OrderItem::select('order_items.id', 'order_items.quantity', 'products.name as product_name', 'products.price')
            ->where('order_items.order_id', $id)
            ->join('orders', 'order_items.order_id', '=', 'orders.id')
            ->join('products', 'products.id', '=', 'order_items.product_id')
            ->get();
    }
}
