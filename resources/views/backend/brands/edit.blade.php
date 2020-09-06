@extends('backendtemplate')
@section('content')
<div class="container-fluid">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">Brand Edit Form</h1>

	</div>



	<form  action="{{route('brands.update',$brand->id)}}" method="POST" enctype="multipart/form-data">
		@csrf
		@method('PUT')
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Photo</label>
      <div class="col-sm-10">
				      		<ul class="nav nav-tabs" id="myTab" role="tablist">
								<li class="nav-item">
							    	<a class="nav-link active" id="oldprofile-tab" data-toggle="tab" href="#oldprofile" role="tab" aria-controls="oldprofile" aria-selected="true"> Old Photo </a>
							  	</li>
							 	<li class="nav-item">
							    	<a class="nav-link" id="newprofile-tab" data-toggle="tab" href="#newprofile" role="tab" aria-controls="newprofile" aria-selected="false"> New photo</a>
							  	</li>
							</ul>

							<div class="tab-content" id="myTabContent">
							  	<div class="tab-pane fade show active" id="oldprofile" role="tabpanel" aria-labelledby="oldprofile-tab">
							  		<img src="{{asset($brand->photo)}}" class="img-fluid" style="width: 120px; height: 120px;">
							  		<input type="hidden" name="oldphoto" value="{{$brand->photo}}">
							  	</div>

							  	<div class="tab-pane fade" id="newprofile" role="tabpanel" aria-labelledby="newprofile-tab">
							  		<input type="file" name="photo">
							  	</div>
							  	@error('avatar')
								    <div class="alert alert-danger">{{ $message }}</div>
								@enderror
							</div>
				    	</div>

  </div>
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" name="name" value="{{$brand->name}}">
    </div>
  </div>

		<button type="submit" class="btn btn-dark" class="btnsubmit">Edit</button>
</form>

</div>


@endsection