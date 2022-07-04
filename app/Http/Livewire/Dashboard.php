<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Todo;
use Livewire\WithPagination;


class Dashboard extends Component
{
    use withPagination;
    public $todo, $date, $status, $due_date, $modal = false, $todo_id, $deleteConfirmation = false, $inviteTeam = false;

    public function render()
    {
        $todos = Todo::latest()->simplepaginate(5);
        return view('dashboard', [
            'todos' => $todos
        ]);
    }

    public function openModal()
    {
        $this->modal = true;
    }

    public function closeModal()
    {
        $this->modal = false;
        $this->resetField();
    }

    public function resetField()
    {
        $this->todo = "";
        $this->date = "";
        $this->due_date = "";
        $this->status = "";
    }

    public function store()
    {
        $this->validate([
            'todo' => 'required',
            'date' => 'required',
            'due_date' => 'required',
            'status' => 'required',
        ]);
        $result = Todo::UpdateOrCreate(['id' => $this->todo_id], [
            'todo' => $this->todo,
            'date' => $this->date,
            'due_date' => $this->due_date,
            'status' => $this->status
        ]);
        if ($result != "0") {
            session()->flash('message', 'berhasil Menyimpan data');
        } else {
            session()->flash('errMessage', 'gagal Menyimpan data');
        }
        $this->closeModal();
        $this->resetField();
    }

    public function edit($id)
    {
        $todo = Todo::find($id);
        $this->todo = $todo->todo;
        $this->date = $todo->date;
        $this->due_date = $todo->due_date;
        $this->status = $todo->status;
        $this->todo_id = $id;
        $this->openModal();
    }

    public function openDeleteModal($id)
    {
        $this->deleteId = $id;
        $this->deleteConfirmation = true;
    }

    public function closeDeleteModal()
    {
        $this->deleteConfirmation = false;
        $this->resetField();
    }

    public function delete($id)
    {
        $todo = Todo::find($id);
        $result = $todo->delete();
        if ($result != "0") {
            session()->flash('message', 'berhasil Menghapus data');
        } else {
            session()->flash('errMessage', 'gagal Menghapus data');
        }
        $this->closeDeleteModal();
    }
}
