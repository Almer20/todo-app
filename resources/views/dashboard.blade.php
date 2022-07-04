
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('ToDoList') }}
        </h2>
    </x-slot>
    @if ($modal)
        @include('livewire.create')
    @endif

    @if ($deleteConfirmation)  
<div class="flex flex-col space-y-4 min-w-screen h-screen animated fadeIn faster  fixed  left-0 top-0 flex justify-center items-center inset-0 z-50 outline-none focus:outline-none bg-gray-900">
    <div class="flex flex-col p-8 bg-white shadow-md hover:shodow-lg rounded-2xl">
        <div class="flex items-center justify-between">
            <div class="flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg"
                    class="w-16 h-16 rounded-2xl p-3 border border-blue-100 text-blue-400 bg-blue-50" fill="none"
                    viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                </svg>
                <div class="flex flex-col ml-3">
                    <div class="font-medium leading-none">Delete Your Acccount ?</div>
                    <p class="text-sm text-gray-600 leading-none mt-1">By deleting your account you will lose your all data
                    </p>
                </div>
            </div>
            <button  wire:click="closeDeleteModal()"  class="flex-no-shrink bg-red-500 px-5 ml-4 py-2 text-sm shadow-sm hover:shadow-lg font-medium tracking-wider border-2 border-light-500 text-white rounded-full">Close</button>
            <button   wire:click.prevent="delete({{$deleteId}})" class="flex-no-shrink bg-red-500 px-5 ml-4 py-2 text-sm shadow-sm hover:shadow-lg font-medium tracking-wider border-2 border-red-500 text-white rounded-full">Delete</button>
        </div>
    </div>
</div>

    {{-- <div class="bg-slate-800 bg-opacity-50 flex justify-center items-center absolute top-0 right-0 bottom-0 left-0">
        <div class="bg-white px-16 py-14 rounded-md text-center">
          <h1 class="text-xl mb-4 font-bold text-slate-500">Do you Want Delete</h1>
          <button  wire:click="closeDeleteModal()" type="button" type="button" class="bg-blue-500 px-4 py-2 rounded-md text-md text-white">Cancel</button>
          <button wire:click.prevent="delete({{$deleteId}})" class="bg-red-500 px-7 py-2 ml-2 rounded-md text-md text-white font-semibold">Delete</button>
        </div>
      </div> --}}
@endif


    <div class="overflow-x-auto">
        <div class=" bg-gray-100 flex items-center justify-center bg-gray-100 font-sans overflow-hidden">
            <div class="w-full lg:w-5/6">
                <div class="bg-white shadow-md rounded my-6">
                    @if (session()->has('message'))
                    <div class="bg-gradient-to-r from-green-400 to-blue-500 text-white px-4 py-3 shadow-md my-3 rounded" role="alert">
                        <div class="flex">
                            <div>
                                <p class="text-sm">{{ session('message') }}</p>
                            </div>
                        </div>
                    </div>
                @endif
                @if (session()->has('errMessage'))
                    <div class="bg-gradient-to-r from-red-400 to-yellow-500 text-white px-4 py-3 shadow-md my-3 rounded" role="alert">
                        <div class="flex">
                            <div>
                                <p class="text-sm">{{ session('errMessage') }}</p>
                            </div>
                        </div>
                    </div>
                @endif
                <button wire:click="openModal()"class="px-10 py-2 bg-blue-500 text-white my-5 mx-10 rounded-xl" >add task</button>
                    <table class="min-w-max w-full table-auto">
                        <thead>
                            <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
                                <th class="py-3 px-6 text-left">Todo</th>
                                <th class="py-3 px-6 text-left">Todo Created</th>
                                <th class="py-3 px-6 text-center">Due Date</th>
                                <th class="py-3 px-6 text-center">Status</th>
                                <th class="py-3 px-6 text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-600 text-sm font-light">
                            @forelse ($todos as $item)
                            <tr class="border-b border-gray-200 hover:bg-gray-100">
                                <td class="py-3 px-6 text-left whitespace-nowrap">
                                    <div class="flex items-center">
                                        <div class="mr-2">
                                            <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                                                 width="24" height="24"
                                                 viewBox="0 0 48 48"
                                                 style=" fill:#000000;">
                                                
                                            </svg>
                                        </div>
                                        <span class="font-medium ">{{$item->todo}}</span>
                                    </div>
                                </td>
                                <td class="py-3 px-6 text-left">
                                    <div class="flex items-center">
                                        <span>{{$item->date}}</span>
                                    </div>
                                </td>
                                <td class="py-3 px-6 text-center">
                                    <div class="flex items-center justify-center">
                                       <span>{{ $item->due_date }}</span>
                                    </div>
                                </td>
                                <td class="py-3 px-6 text-center">
                                    <span class="bg-purple-200 text-purple-600 py-1 px-3 rounded-full text-xs">{{ $item->status }}</span>
                                </td>
                                <td class="py-3 px-6 text-center">
                                    <div class="flex item-center justify-center">
                                        <button class="w-4 mr-2 transform hover:text-purple-500 hover:scale-110">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                            </svg>
                                        </button>
                                        <button  wire:click="edit({{$item->id}})" class="w-4 mr-2 transform hover:text-purple-500 hover:scale-110">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z" />
                                            </svg>
                                        </button>
                                        <button wire:click="openDeleteModal({{$item->id}})" class="w-4 mr-2 transform hover:text-purple-500 hover:scale-110">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                            </svg>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            @empty
                            <h1 class="text-gray-700 text-center">
                                Tidak ada data</h1>    
                            @endforelse
                           
                        </tbody>
                    </table>
                </div>
                {{ $todos->links() }}
            </div>
        </div>
    </div>
  

