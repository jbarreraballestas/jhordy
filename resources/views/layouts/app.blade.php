<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/draggable/1.0.0-beta.12/draggable.min.js" integrity="sha512-VTqyB/kLQGaTnF5kYAgeEFo8fwqdlAGNUQeoQi4EOmmBYTEQ/XrYC7lnzCvBBp1PR+1ODEQiT075oeUdPeFHwA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    @livewireStyles
    <script src="{{ mix('js/app.js') }}" defer></script>
</head>

<body class="font-sans antialiased bg-light">
    <x-jet-banner />
    @livewire('navigation-menu')
    @isset($header)
        <header class="d-flex py-3 bg-white shadow-sm border-bottom">
            <div class="container">
                {{ $header }}
            </div>
        </header>
    @endisset

    <main class="container my-5">
        @include('alerts')
        {{ $slot }}
    </main>

    @stack('modals')

    @livewireScripts

    @stack('scripts')
</body>

</html>
