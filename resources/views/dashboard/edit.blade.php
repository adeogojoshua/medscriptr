@extends('layouts.dashboard')

@section('content')
<div class="row">
  <div class="col-sm-12 col-md-8 offset-md-2">
    <div class="card">
      <div class="card-header">Edit Staff Details</div>
          <div class="card-body">
            <form action="{{route('dashboard.update', $staff->id)}}" method="POST">
            {{csrf_field()}}
            {{method_field('put')}}
            <div class="form-group">
              <label>First Name</label>
              <input name="first_name" type="text" class="form-control" value="{{$staff->first_name}}">
            </div>
            <div class="form-group">
              <label>Last Name</label>
              <input name="last_name" type="text"  class="form-control" value="{{$staff->last_name}}">           
            </div>
            <div class="form-group">
              <label>Email</label>
              <input name="email" type="email" class="form-control" value="{{$staff->email}}">         
            </div>
            <div class="form-group">
              <label>Role</label>
              <select name="role" class="form-control"> 
                <option value="{{$staff->role}}">{{$staff->role}}</option>
                <option value="Administrator">Administrator</option>
                <option value="Doctor">Doctor</option>
                <option value="Nurse">Nurse</option>
              </select>     
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-sm btn-fill" type="submit">Update</button>
              <!-- Button trigger modal -->
<button type="button" class="btn btn-danger btn-sm float-right" data-toggle="modal" data-target="#staffDelete">
  Delete
</button>
</form>
<!-- Modal -->
<div class="modal fade" id="staffDelete" tabindex="-1" role="dialog" aria-labelledby="staffDeleteTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header bg-warning text-white">
        <h5 class="modal-title" id="exampleModalLongTitle">This action can not be undone.</h5>
        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="POST" action="{{route('dashboard.destroy', $staff->id)}}">
      {{csrf_field()}}
      {{method_field('delete')}}
      <div class="modal-body">
        Really delete <b>{{$staff->last_name}} {{$staff->first_name}}</b>  ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary float-left btn-sm" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-danger btn-sm">Yes, Delete</button>
      </div>
      </form>
    </div>
  </div>
</div>
            </div>
          </div>
    </div>
  </div>
</div>

@endsection