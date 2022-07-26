<?php

namespace App\Http\Livewire;

use Livewire\Component;

class DataJs extends Component
{
    public $data=['Prueba'];
    // public $listeners = ['loadData'];
    public function render()
    {
        return view('livewire.data-js');
    }

    public function loadData(){
        $this->data = [1,2,3,4,5,6,7,8,9];
        $this->emit('loadData');
    }
}
