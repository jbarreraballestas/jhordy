<x-app-layout>
    <h3 class="text-center">{{ $items->count() }} Items</h3>
    <h3 class="text-secondar">Create Item</h3>
    <form action="{{ route('items.store') }}" method="post">
        @csrf

        <div class="form-input">
            <div class="mb-3">
                <label for="name">{{ __('NAME') }}</label>
                <input type="text" max="255" name="name" id="name" class="form-control">
                @error('name')
                    <p class="mb-0 text-danger">{{ $message }}</p>
                @enderror
            </div>
        </div>
        <button type="submit" class="btn btn-success fw-bold text-white mb-3">{{ __('Save') }}</button>
    </form>

    <div class="table-responsive">
        <table class="table table-sm table-hover table-bordered">
            <thead>
                <tr>
                    <th>{{ __('ID') }}</th>
                    <th>{{ __('NAME') }}</th>
                    <th>{{ __('ORDER') }}</th>
                    <th>{{ __('ACTIONS') }}</th>
                </tr>
            </thead>
            <tbody id="list-items">
                @foreach ($items as $item)
                    <tr class="item" data-id="{{$item->id}}">
                        <th><i class="fas fa-arrows-alt"></i> {{$item->id}}</th>
                        <td>{{$item->name}}</td>
                        <td>{{$item->order}}</td>
                        <td>
                            <a href="{{route('items.edit',$item->id)}}">{{__('Edit Item')}}</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <script>
        listitems = document.getElementById('list-items')
        new Sortable(listitems, {
            handle: '.fa-arrows-alt',
            ghostClass: 'bg-info',
            onUpdate: function(evt) {
                data = []
                $('.item').each((index,item)=>{
                    data.push({
                        id: item.getAttribute('data-id'),
                        order: index+1
                    })
                })
                console.log(data);

                $.ajax({
                    type: "post",
                    url: "{{route('items.reorder')}}",
                    data: {
                        reorder: data,
                        _token: '{{csrf_token()}}'
                    },
                    success: function (msg) {
                        console.log("Reorder: "+msg);
                    }
                });
            },
        });

    </script>
</x-app-layout>
