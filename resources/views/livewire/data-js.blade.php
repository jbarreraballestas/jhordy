<div>
    @dump($data)
    <button wire:click="loadData">Load</button>
    <script>
        document.addEventListener('livewire:load', function() {
            @this.loadData();
            @this.on('loadData', () => {
                datos = @this.data;
                console.log(datos);
            });
        })
    </script>
</div>
