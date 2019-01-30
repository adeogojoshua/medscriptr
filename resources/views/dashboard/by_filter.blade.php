@extends('layouts.dashboard')

@section('content')
    <div class="container-fluid">
      <div class="row">
        <div class="col-12 alert alert-primary rounded">
          All registered {{ucfirst($role)}}s.
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
                Action
            </th>
          </tr>
          @foreach($staffs as $staff)
            <tr>
              <td>{{$staff->first_name}}</td>
              <td>{{$staff->last_name}}</td>
              <td>{{$staff->email}}</td>
              <td><a class="btn btn-fill btn-sm btn-primary text-white btn-fill" href="{{route('dashboard.edit', $staff->id)}}">Edit</a>
            </tr>
          @endforeach
        </table>
        {{$staffs->links()}}
      </div>
    </div>
@endsection