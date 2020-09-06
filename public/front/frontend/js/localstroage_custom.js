$(document).ready(function(){
showMyItem();
cartnoti();
	$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
	});

	$('.addtocartBtn').click(function(){
		//alert('hello');

		var id = $(this).data('id');
		var name = $(this).data('name');
		var photo=$(this).data('photo');
		var price=$(this).data('price');
		//console.log(id,name,photo,price);

		var item = {
			id:id,
			name:name,
			photo:photo,
			price:price,
			qty:1
		}
		//console.log(item);

		var itemString = localStorage.getItem("items");
		var itemArray ;

		if (itemString == null){
			itemArray = Array();
		}else{
			itemArray = JSON.parse(itemString);
		}

		var status = false;

		$.each(itemArray,function(i,v){
			if (id==v.id){
				status = true;
				v.qty++;
			}
		})

		if(!status){
			itemArray.push(item);
		}
		var itemData = JSON.stringify(itemArray);
		localStorage.setItem('items',itemData);
		showMyItem();
		cartnoti();
		

		
	});

	$('#tbody').on('click','.pluse',function(){
		//alert('ok');
		var id = $(this).data('id');
		var qty = $(this).data('qty');
		//console.log(qty);

		var itemString = localStorage.getItem('items');
		if (itemString){
			var itemArray = JSON.parse(itemString);
			$.each(itemArray, function(i,v){
			 		if(id==v.id)
			 			v.qty++;

			})
			var itemData = JSON.stringify(itemArray);
			localStorage.setItem("items",itemData);
			showMyItem();
		}
		
	})

	$('#tbody').on('click','.minus',function(){
		//alert('ok');
		var id = $(this).data('id');
		
		var itemString = localStorage.getItem('items');
		if (itemString){
			var itemArray = JSON.parse(itemString);
			$.each(itemArray, function(i,v){
			 		if(v){
			 			if(v.id==id){
			 				if(v.qty==1){
			 					var ans=confirm('Are you sure to delete?');
			 					if(ans){
			 						itemArray.splice(i,1);
			 					}
			 				}else{
			 					v.qty--;
			 				}
			 			}
			 		}

			})
			var itemData = JSON.stringify(itemArray);
			localStorage.setItem("items",itemData);
			showMyItem();
		}
	})

	$('#tbody').on('click','.remove',function(){
		//alert('ok');
		var id = $(this).data('id');
		
		var itemString = localStorage.getItem('items');
		if (itemString){
			var itemArray = JSON.parse(itemString);
			$.each(itemArray, function(i,v){
			 		if(v){
			 			if(v.id==id){
		 					var ans=confirm('Are you sure to delete?');
		 					if(ans){
		 					itemArray.splice(i,1);
			 				}
			 			}
			 		}

			})
			var itemData = JSON.stringify(itemArray);
			localStorage.setItem("items",itemData);
			showMyItem();
			cartnoti();
		}
	})

	

	$('.buy_now').on('click',function(){
		//alert('ok');
		var notes = $('.notes').val();
		
		//console.log(notes);
		var itemString = localStorage.getItem('items');
		if(itemString){
			$.post('/orders',{shop_data:itemString,notes:notes},function(response){
				if(response){
				alert(response);
					localStorage.clear();
					showMyItem();
					location.href="/";
				}
			})
		}
	
	})


	function cartnoti(){
		var noti;
		var itemString=localStorage.getItem('items');
		if(itemString){
			var itemArray=JSON.parse(itemString);
			noti=itemArray.length;

		}
		$('.cartnoti').html(noti);
	}


	function showMyItem(){
			var itemString = localStorage.getItem("items");
			if(itemString){
				var itemArray = JSON.parse(itemString);
			}
			var html ='';
			var j=1;
			var total=0;

			$.each(itemArray,function(i,v){
				var id = v.id;
				var name = v.name;
				var photo = v.photo;
				var price = v.price ;
				var qty = v.qty;
				var subtotal =Number(price)*Number(qty);
				total += subtotal;



				html+=`
				<tr>
					<td>${j}</td>
					<td>${name}</td>
					<td><img src="${photo}"  width="50"></td>
					<td>${price}</td>
					<td>
						<button type="button" class="btn btn-sm btn-danger minus" data-id="${id}" data-qty="${qty}">
						-</button>
						${qty}
						<button type="button" class="btn btn-sm btn-danger pluse" data-id="${id}" data-qty="${qty}">
						+</button>
					</td>
					<td>${subtotal}</td>
					<td>
						<button class=" btn-outline-danger remove" data-id="${id}">
									<i class="fas fa-times">Delete</i>
						</button>
					</td>
				</tr>`
				j++;
			});
			$("#tbody").html(html);
			$('.total').text(total);
		}
});