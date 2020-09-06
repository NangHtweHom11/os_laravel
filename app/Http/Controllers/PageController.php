<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Subcategory;
use App\Item;
use App\Brand;
use App\Order;


class PageController extends Controller
{
    public function mainfun($value='')
     {
          $brands=Brand::all();
          $items=Item::all();
     	return view('frontend.main',compact('items','brands'));
     }

     public function brandfun($value='')
     {
          
          $items=Item::all();
     	return view('frontend.brand',compact('items'));
     }

     public function itemdetailfun($id)
     {

          $item=Item::find($id);
          $items=Item::All();
     	return view('frontend.itemdetail',compact('item','items'));
     }

     public function loginfun($value='')
     {
     	return view('frontend.login');
     }

     public function promotionfun($value='')
     {
          $items=Item::all();
     	return view('frontend.promotion',compact('items'));
     }

     public function registerfun($value='')
     {
     	return view('frontend.register');
     }

     public function shoppingcartfun($value='')
     {
          
          $items=Item::all();
     	return view('frontend.shoppingcart',compact('items',));
     }

     public function subcategoryfun($id)
     {
          $subcategory=Subcategory::find($id);
          return view('frontend.subcategory',compact('subcategory'));
     }

     
     
}
