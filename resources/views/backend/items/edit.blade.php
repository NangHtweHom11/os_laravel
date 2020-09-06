@extends('backendtemplate')
@section('content')
<div class="container-fluid col-md-9">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800 ">Item Edit Form</h1>

	</div>


  <form action="{{route('items.update',$item->id)}}" method="POST" enctype="multipart/form-data">
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
						<img src="{{asset($item->photo)}}" class="img-fluid" style="width: 120px; height: 120px;">
						<input type="hidden" name="oldphoto" value="{{$item->photo}}">
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
      <label for="codeno" class="col-sm-2 col-form-label">Code No</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="codeno" name="codeno" value="{{$item->codeno}}">
      </div>
    </div>
    <div class="form-group row">
      <label for="name" class="col-sm-2 col-form-label">Name</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" name="name" value="{{$item->name}}">
      </div>
    </div>
    <div class="form-group row">
      <label for="price" class="col-sm-2 col-form-label">Price</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="price" name="price" value="{{$item->price}}">
      </div>
    </div>
    <div class="form-group row">
      <label for="discount" class="col-sm-2 col-form-label">Discount</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="discount" name="discount" value="{{$item->discount}}">
      </div>
    </div>
    <div class="form-group row">
      <label for="name" class="col-sm-2 col-form-label">Subcategory</label>
      <div class="col-sm-10">
        <select name="subcategory" class="form-control">
          @foreach($subcategories as $row)
          <option value="{{$row->id}}" @if($item->subcategory_id == $row->id){{'selected'}} @endif>{{$row->name}}
					   	</option>
          @endforeach
        </select>
      </div>
    </div>
    <div class="form-group row">
      <label for="name" class="col-sm-2 col-form-label">Brand</label>
      <div class="col-sm-10">
        <select name="brand" class="form-control">
          @foreach($brands as $row)
<option value="{{$row->id}}" @if($item->brand_id == $row->id){{'selected'}} @endif>{{$row->name}}
					   	</option>
          @endforeach
        </select>
      </div>
    </div>
    <div class="form-group row">
      <label for="discount" class="col-sm-2 col-form-label">Description</label>
      <div class="col-sm-10">
        <textarea class="form-control" name="description">{{$item->description}}</textarea>
      </div>
    </div>
    <button type="submit" class="btn btn-primary mb-4" class="btnsubmit">Create</button>
  </form>
</div>
@endsection