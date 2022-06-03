<x-app-layout>
    <h3 class="text-secondar">Edit Item {{$item->name}}</h3>
    <form action="{{ route('items.update',$item->id) }}" method="post">
        @csrf
        @method('put')
        <div class="form-input">
            <div class="mb-3">
                <label for="name">{{__('NAME')}}</label>
                <input type="text" max="255" name="name" id="name" class="form-control" value="{{$item->name}}">
                @error('name')
                    <p class="mb-0 text-danger">{{$message}}</p>
                @enderror
            </div>
        </div>
        <button type="submit" class="btn btn-success fw-bold text-white mb-3">{{__('Update')}}</button>
    </form>
</x-app-layout>
