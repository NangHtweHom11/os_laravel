@extends('backendtemplate')

@section('content')
<div class="container-fluid mt-4">
  <h1 class="h3 mb-4 text-gray-800">
      <i class="fas fa-list-alt pr-3"></i> 
      Order Details List
    </h1>

    
              <form method="get" action="{{route('orders.index')}}">

                <div class="col-md-5 ">
                    <div class="form-group row">
                        <label class="form-control-label ml-3 mt-2">Start date</label>
                        <div class="col-md-12">
                            <input type="date" name="startdate" class="form-control startdate">
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="form-group row">
                        <label class="form-control-label ml-3 mt-2"> End date</label>
                        <div class="col-md-12">
                            <input type="date" name="enddate" class="form-control enddate">
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group row">
                        <label class="form-control-label ml-3 mt-3"> </label>
                            <div class="col-md-12 mt-3">
                                <button class="btn btn-outline-success search_date "><i class="fas fa-search"></i></button>
                            </div>  
                    </div>
                </div>
              </form>
           
    <div>
      
      <div class="card shadow">
        <div class="card-body mx-3">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
              <table class="table table-borderless mt-5" style="border-radius: 10px;">
                      <tr>
                        <td>Voucher code</td>
                        <td>:&nbsp;&nbsp;{{$order->voucherno}}</td>
                      </tr>
                      <tr>
                        <td>Order Date</td>
                        <td>:&nbsp;&nbsp;{{$order->orderdate}}</td>
                      </tr>
                      
                </table>
            </div>
            
        </div>
        <div class="row mt-4">
          <table class="table text-center">
                  <thead >
            <tr>
              <th>No</th>
              <th>Item Name</th>
              <th>Price</th>
              <th>Qty</th>
              <th>Subtotal</th>
              
            </tr>
          </thead>
          <tbody>
          @php 
            $i=1;
            $total=0;
            @endphp
            @foreach($order->items as $item)
            @php
            $subtotal=$item->price*$item->pivot->qty;
            $total+=$subtotal
            @endphp
            <tr>
              
              <td>{{($i++)}}</td>
              <td>{{$item->name}}</td>
              <td>{{$item->price}} Ks</td>
              <td>{{$item->pivot->qty}}</td>
              <td>{{$subtotal}} Ks</td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="3"><h4>Total</h4></td>
              <td colspan="2">{{$total}} Ks</td>
            </tr>
          </tfoot>
          @endforeach        
          </table>
        </div>

        <div class=" py-3">
        
              <div class="row mt-2">
          <div class="col-10">
          
          </div>
          <div class="col-2">
            <a href="{{route('orders.index')}}" class="btn btn-info btn-block float-right"> 
                    <i class="fas fa-backward pr-2"></i>  Back 
                  </a>
          </div>
          
        </div>
        </div>
        </div>
      </div>
    </div>
</div>
@endsection