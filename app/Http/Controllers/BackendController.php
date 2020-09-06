<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BackendController extends Controller
{
     // public function backendtemplatefun($value='')
     // {
     //      return view('backendtemplate');
     // }

     public function dashboardfun($value='')
     {
          return view('backend.dashboard');
     }
}
