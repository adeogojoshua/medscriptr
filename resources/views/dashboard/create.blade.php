@extends('layouts.dashboard')

@section('content')
<div class="row">
  <div class="col-sm-12 col-md-8 offset-md-2">
    <div class="card">
      <div class="card-header">Add New Staff</div>
          <div class="card-body">
            <form action="{{route('dashboard.store')}}" method="POST">
            {{csrf_field()}}
            <div class="form-group">
              <label>First Name</label>
              <input name="first_name" type="text" class="form-control">            
            </div>
            <div class="form-group">
              <label>Last Name</label>
              <input name="last_name" type="text"  class="form-control">            
            </div>
            <div class="form-group">
              <label>Email</label>
              <input name="email" type="email" class="form-control">            
            </div>
            <div class="form-group">
              <label>Role</label>
              <select name="role" class="form-control"> 
                <option value="Administrator">Administrator</option>
                <option value="Doctor">Doctor</option>
                <option value="Nurse">Nurse</option>
              </select>     
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-sm btn-fill" type="submit">Submit</button>
            </div>
            </form>
          </div>
    </div>
  </div>
</div>
@endsection