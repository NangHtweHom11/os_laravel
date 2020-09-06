@extends('master')
@section('content')

<!-- Subcategory Title -->
	<div class="jumbotron jumbotron-fluid subtitle">
  		<div class="container">
    		<h1 class="text-center text-white"> Your Shopping Cart </h1>
  		</div>
	</div>
	
	<!-- Content -->
	<div class="container mt-5">
		
		<!-- Shopping Cart Div -->
		<div class="row mt-5 shoppingcart_div">
			<div class="col-12">
				<a href="categories" class="btn mainfullbtncolor btn-secondary float-right px-3" > 
					<i class="icofont-shopping-cart"></i>
					Continue Shopping 
				</a>
			</div>
		</div>

		<div class="row mt-5 shoppingcart_div">
			<div class="table-responsive">
				<table class="table text-center">
					<thead>
						<tr>
							<th> No </th>
							<th> Name </th>
							<th> Photo </th>
							<th> Price </th>
							<th> Qty </th>
							<th> Total</th>
							<th> Action</th>
						</tr>
					</thead>
					<tbody id="tbody">
						

					</tbody>
					<tfoot id="shoppingcart_tfoot" class="text-right">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>
								<div class="row">
								<h3 class="">Total :&nbsp;</h3>
								<h3 class="total"></h3>
								<h3>&nbsp;Ks</h3>
								</div>
							</td>
						</tr>
						<tr>
						
							<td colspan="5">
								<textarea class="form-control notes" placeholder="Any Request..." ></textarea>
								
							</td>
							
							<td colspan="3">
								@role('Customer')
								<button class="btn btn-secondary btn-block mainfullbtncolor checkoutbtn buy_now"> 
									Check Out 
								</button>
								@else
								<a  href="{{route('loginpage')}}" class="btn btn-secondary btn-block mainfullbtncolor checkoutbtn buy_now">
									Please Login
								</a>
								@endrole
							</
							</td>
						
						</tr>
					</tfoot>
				</table>
			</div>
		</div>

		<!-- No Shopping Cart Div -->
		<div class="row mt-5 noneshoppingcart_div text-center">
			
			<div class="col-12">
				<h5 class="text-center"> There are no items in this cart </h5>
			</div>

			<div class="col-12 mt-5 ">
				<a href="categories" class="btn btn-secondary mainfullbtncolor px-3" > 
					<i class="icofont-shopping-cart"></i>
					Continue Shopping 
				</a>
			</div>

		</div>
		@endsection
		

	</div>
	