@extends('layouts.dashboard')

@section('content')
<div class="container">
    <div class="row">
    
        <div class="col-lg-3 col-md-6 col-sm-6 mb-3">
            <a href="{{route('dashboard.staffs')}}">
                <div class="card card-stats bg-primary">
                <div class="card-body ">
                    <div class="row">
                    <div class="col-12">
                        <div class="numbers text-white">
                        <p class="card-category">Staffs</p>
                        <p class="card-title float-right">
                            {{$total}}
                            </p>
                        </div>
                    </div>
                    </div>
                </div>
                </div>
            </a>
          </div>
          

            <div class="col-lg-3 col-md-6 col-sm-6 mb-3">
            <a href="{{route('dashboard.filter', 'administrator')}}">
            <div class="card card-stats bg-danger">
              <div class="card-body ">
                <div class="row">
                  <div class="col-12">
                    <div class="numbers text-white">
                      <p class="card-category">Administrators</p>
                      <p class="card-title float-right">
                        {{$admins}}
                        </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </a>
          </div>

                  <div class="col-lg-3 col-md-6 col-sm-6 mb-3">
                  <a href="{{route('dashboard.filter', 'doctor')}}">
            <div class="card card-stats bg-success">
              <div class="card-body ">
                <div class="row">
                  <div class="col-12">
                    <div class="numbers text-white">
                      <p class="card-category">Doctors</p>
                      <p class="card-title float-right">
                        {{$doctors}}
                        </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </a>
          </div>

            <div class="col-lg-3 col-md-6 col-sm-6 mb-3">
            <a href="{{route('dashboard.filter', 'nurse')}}">
            <div class="card card-stats bg-dark">
              <div class="card-body ">
                <div class="row">
                  <div class="col-12">
                    <div class="numbers text-white">
                      <p class="card-category">Nurses</p>
                      <p class="card-title float-right">
                        {{$nurses}}
                        </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </a>
          </div>



          
    </div>
</div>
@endsection
