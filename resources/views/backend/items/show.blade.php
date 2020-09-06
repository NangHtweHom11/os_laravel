@extends('backendtemplate')

@section('content')
<div class="container-fluid mt-4">
	<h1 class="h3 mb-4 text-gray-800">
  		<i class="fas fa-list-alt pr-3"></i> 
  		Item Details List
  	</h1>
  	<div>
  		
	    <div class="card shadow">
	    	<div class="card-body mx-3">
	    		<div class="row">
	    			<div class="col-lg-6 col-md-6 col-sm-12">
			    		<table class="table table-borderless mt-5" style="border-radius: 10px;">
		              		<tr>
		              			<td>Item Codeno</td>
		              			<td>:&nbsp;&nbsp;{{$item->codeno}}</td>
		              		</tr>
		              		<tr>
		              			<td>Item Name</td>
		              			<td>:&nbsp;&nbsp;{{$item->name}}</td>
		              		</tr>
		              		
				        </table>
				    </div>
				    <div class="col-lg-6 col-md-6 col-sm-12 text-center">
				    	<img src="{{asset($item->photo)}}" class="img-fluid mt-3"
	        			width="200px">
				    </div>
				</div>
				<div class="row mt-4">
					<table class="table text-left">
                	<thead >
						<tr>
							<th>No</th>
							<th>Subcategory</th>
							<th>Brand</th>
							<th>Item Price</th>
							<th>Item Discount</th>
							
						</tr>
					</thead>
					<tbody>
					@php $i=1; @endphp
					<tr>
						<td>{{$i++}}</td>
                        <td>{{$item->subcategory->name}}</td> 
                        <td>{{$item->brand->name}}</td> 
                        <td>{{$item->price}}&nbsp;MMK</td>
                        <td>{{$item->discount}}&nbsp;MMK</td> 
					</tr>
					
					</tbody>
                	
                </table>
				</div>

				<div class=" py-3">
				<div class="row">
	    			<h4>Description</h4>

	    			<p style="text-align: justify;" class="mt-2">{{$item->description}}</p>
				    
				</div>
	            <div class="row mt-2">
					<div class="col-10">
					
					</div>
					<div class="col-2">
						<a href="{{route('items.index')}}" class="btn btn-info btn-block float-right"> 
		            		<i class="fas fa-backward pr-2"></i>	Back 
		            	</a>
					</div>
					
				</div>
		    </div>
	    	</div>
	    </div>
  	</div>
</div>
@endsection