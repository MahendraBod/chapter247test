<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use DataTables;
use DB;

class ProductController extends Controller
{
    public function index(){
        return view('products');
    }

    public function getProductData(){
        //Note: we should write this code in model. i write this for temporary use
        $product = Product::select('id', 'name', 'price', DB::raw('(CASE WHEN in_stock = 1 THEN "YES" ELSE "No" END) AS in_stock'));
        return DataTables::of($product)->make(true);
    }
}
