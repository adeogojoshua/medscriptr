@extends('layouts.dashboard')

@section('content')
    <div class="container-fluid">
      <div class="row">
        <div class="col-12 alert alert-primary rounded">
          All registered staffs.
        </div>
        <div class="col-12 alert alert-dark rounded">
        <form action="{{route('dashboard.search')}}" method="get">
        {{csrf_field()}}
          <div class="row">
          <div class="col-5">
            <input required type="text" name="search" class="form-control form-control-sm" placeholder="Search for">
          </div>
          <div class="col-5">
            <select class="custom-select form-control-sm" required name="field">
              <option value="">Search in</option>
              <option value="first_name">First Name</option>
              <option value="last_name">Last Name</option>
              <option value="email">Email</option>
              <option value="role">Role</option>
            </select>
          </div>
          <div class="col-2">
            <button type="submit" class="btn btn-primary btn-sm btn-block">Search</button>
          </div>
          
          </div>
          </form>
        </div>
        {{$staffs->links()}}
        <table class="table table-striped table-hover">
          <tr class="thead-dark">
            <th>
                First Name
            </th>
            <th>
                Last Name
            </th>
            <th>
                Email
            </th>
            <th>
                Role
            </th>
            <th>
                Action
            </th>
          </tr>
          @foreach($staffs as $staff)
            <tr>
              <td>{{$staff->first_name}}</td>
              <td>{{$staff->last_name}}</td>
              <td>{{$staff->email}}</td>
              <td>{{$staff->role}}</td>
              <td><a class="btn btn-fill btn-sm btn-primary text-white btn-fill" href="{{route('dashboard.edit', $staff->id)}}">Edit</a>
            </tr>
          @endforeach
        </table>
        {{$staffs->links()}}
      </div>
    </div>
@endsection