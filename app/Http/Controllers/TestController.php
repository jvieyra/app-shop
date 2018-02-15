<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class TestController extends Controller
{
    //function call welcome view
    public function welcome(){
      $products = Product::all();
      //inyectar un variable en la vista
      //function compact , crea un array asociativo
      //apartir de los parametros. $product == 'products'
      return view('welcome')->with(compact('products'));
    }
}
