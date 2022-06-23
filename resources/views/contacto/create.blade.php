<x-app-layout>

    <form action="{{route('contacto.store')}}" method="post">
        @csrf
        <div class="form-group mb-3">
            <label for="nombre">Nombre: <span class="text-danger">*</span></label>
            <input type="text" name="nombre" id="nombre" class="form-control" value="{{old('nombre')}}">
        </div>
        <div class="form-group mb-3">
            <label for="correo">Correo: <span class="text-danger">*</span></label>
            <input type="email" name="correo" id="correo" class="form-control" value="{{old('correo')}}">
        </div>
        <div class="form-group mb-3">
            <label for="prefijo">Prefijo:</label>
            <select name="prefijo" id="prefijo" class="form-select">
                <option value=""></option>
                @foreach ($codes as $c)
                    <option value="{{$c->dial_code}}" {{old('prefijo')==$c->dial_code?'selected':''}}>{{$c->name_es}} {{$c->dial_code}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group mb-3">
            <label for="contacto">Celular</label>
            <input type="number" name="contacto" id="contacto" class="form-control" value="{{old('contacto')}}">
        </div>

        <div class="form-group mb-3">
            <label for="mensaje">Mensaje: <span class="text-danger">*</span></label>
            <textarea name="mensaje" id="mensaje" rows="10" class="form-control">{{old('mensaje')}}</textarea>
        </div>


        {!! ReCaptcha::htmlFormSnippet() !!}

        <button type="submit" class="btn btn-success">{{__('Send')}}</button>
    </form>

</x-app-layout>
