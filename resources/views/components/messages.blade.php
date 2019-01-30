@if(count($errors) > 0)
    @foreach($errors->all() as $error)
            <br/>
            <div class="alert alert-danger rounded text-white" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true" class="text-white" style="color: #FFF;">X</span>
                        <span class="sr-only">Close</span>
                    </button>
            {{$error}}
        </div>
    @endforeach
@endif

@if(session('success'))
<br/>
    <div class="alert alert-success rounded text-white" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true" class="text-white" style="color: #FFF;">X</span>
            <span class="sr-only">Close</span>
        </button>
        {{session('success')}}
    </div>
@endif

@if(session('error'))
<br/>
<div class="alert alert-danger rounded text-white" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true" class="text-white" style="color: #FFF;">X</span>
                    <span class="sr-only">Close</span>
                </button>
        {{session('error')}}
    </div>
@endif