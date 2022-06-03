@if (session('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>{{__('Good job!')}}</strong> {{session('success')}}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
@endif


@if ($errors->any())
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>{{__('Error')}}</strong>
        <ul class="mb-0">
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
@endif
