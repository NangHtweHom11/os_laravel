@extends('backendtemplate')
@section('content')
<div class="container-fluid">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">Category Create Form</h1>

	</div>


	
	<form  action="{{ route('categories.store')}}" method="POST" enctype="multipart/form-data">
		@csrf
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="name">Name</label>
				<input type="text" class="form-control" id="name" name="name">
			</div>
			<div class="form-group col-md-6">
				<label for="photo">Photo</label>
				<input type="file" class="form-control" id="photo" name="photo">
			</div>
		</div>

		<button type="submit" class="btn btn-primary" class="btnsubmit">Create</button>
	</form>

</div>
@endsection
