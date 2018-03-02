<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\CartDetail;

class CartDetailController extends Controller
{
    //
    public function store(Request $request){

      $cartDetail = new CartDetail();
      
      $cartDetail->cart_id = auth()->user()->cart_id;
      $cartDetail->product_id = $request->product_id;
      $request->quantity = $request->quantity;
      $cartDetail->save();
    }
}
