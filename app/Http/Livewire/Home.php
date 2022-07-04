<?php

namespace App\Http\Livewire;

use App\Models\Todo;
use Livewire\Component;


class Home extends Component
{
    public $todos;

    public function render()
    {
        $this->todos = Todo::all();
        return view('pages.home')->layout('layouts.home');
    }
}
