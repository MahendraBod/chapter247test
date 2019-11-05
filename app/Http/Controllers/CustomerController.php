<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use DataTables;

class CustomerController extends Controller
{
    public function index(){
        return view('customers');
    }

    public function getCustomerData(){
        return DataTables::of(Customer::query())->make(true);
    }
}
