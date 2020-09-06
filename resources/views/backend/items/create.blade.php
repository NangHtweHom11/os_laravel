@extends('backendtemplate')
@section('content')
<div class="container-fluid col-md-9">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800 ">Item Create Form</h1>

	</div>


  <form action="{{route('items.store')}}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="form-group row">
      <label for="staticEmail" class="col-sm-2 col-form-label">Photo</label>
      <div class="col-sm-10">
        <input type="file" class="form-control" name="photo">
      </div>
    </div>
    <div class="form-group row">
      <label for="codeno" class="col-sm-2 col-form-label">Code No</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="codeno" name="codeno">
      </div>
    </div>
    <div class="form-group row">
      <label for="name" class="col-sm-2 col-form-label">Name</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" name="name">
      </div>
    </div>
    <div class="form-group row">
      <label for="price" class="col-sm-2 col-form-label">Price</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="price" name="price">
      </div>
    </div>
    <div class="form-group row">
      <label for="discount" class="col-sm-2 col-form-label">Discount</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="discount" name="discount">
      </div>
    </div>
    <div class="form-group row">
      <label for="name" class="col-sm-2 col-form-label">Subcategory</label>
      <div class="col-sm-10">
        <select name="subcategory" class="form-control">
          @foreach($subcategories as $row)
          <option value="{{$row->id}}">{{$row->name}}
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
          <option value="{{$row->id}}">{{$row->name}}
          </option>
          @endforeach
        </select>
      </div>
    </div>
    <div class="form-group row">
      <label for="discount" class="col-sm-2 col-form-label">Description</label>
      <div class="col-sm-10">
        <textarea class="form-control" name="description"></textarea>
      </div>
    </div>
    <button type="submit" class="btn btn-primary mb-4" class="btnsubmit">Create</button>
  </form>
</div>
@endsection