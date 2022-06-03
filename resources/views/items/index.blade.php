<x-app-layout>
    <h3 class="text-center">{{ $items->count() }} Items</h3>
    <h3 class="text-secondar">Create Item</h3>
    <form action="{{ route('items.store') }}" method="post">
        @csrf

        <div class="form-input">
            <div class="mb-3">
                <label for="name">{{__('NAME')}}</label>
                <input type="text" max="255" name="name" id="name" class="form-control">
                @error('name')
                    <p class="mb-0 text-danger">{{$message}}</p>
                @enderror
            </div>
        </div>
        <button type="submit" class="btn btn-success fw-bold text-white mb-3">{{__('Save')}}</button>
    </form>

    <div class="table-responsive">
        <table class="table table-sm table-hover table-bordered">
            <thead>
                <tr>
                    <th>{{__('ID')}}</th>
                    <th>{{__('NAME')}}</th>
                    <th>{{__('ORDER')}}</th>
                    <th>{{__('ACTIONS')}}</th>
                </tr>
            </thead>
            <tbody id="list-items">
                @foreach ($items as $item)
                    <tr class="item" data-id="{{$item->id}}">
                        <th>{{$item->id}}</th>
                        <th>{{$item->name}}</th>
                        <th>{{$item->order}}</th>
                        <th>
                            <a href="{{route('items.edit',$item->id)}}">{{__('Edit Item')}}</a>
                        </th>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <script>
        const sortable = new Sortable.default(document.getElementById('list-items'),{
            draggable: 'tr'
        })

        sortable.on('sortable:start',()=>{
            // console.log('start');
        })
        sortable.on('sortable:sorted',()=>{
            // console.log('sorted');
        })
        sortable.on('sortable:stop',()=>{
            setTimeout(() => {
                items = $('.item')
                console.log(items);
            }, 100);
        })
    </script>
</x-app-layout>
