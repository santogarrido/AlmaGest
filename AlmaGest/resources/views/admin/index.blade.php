@extends('layouts.app')
@vite(['resources/js/app.js'])

@section('content')

<div class="container mt-5" style="background-color: #007BFF; color: white; border-radius: 10px; padding: 20px;">
    <h1 class="mb-4" style="color: white;">Administration Panel</h1>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-bordered text-center align-middle">
        <thead class="table-light">
            <tr>
                <th>Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
                @if ($user->type != 'A')
                    <tr>
                    <td>{{ $user->firstname }} {{ $user->secondname  }}</td>
                    <td class=""actions-cell>
                        <div class="d-flex gap-2 justify-content-center flex-wrap">
                            {{-- BOTÓN ACTIVAR (solo si tiene el email confirmado y está desactivado) --}}
                            @if($user->activated == 0)
                                <form action="{{ route('admin.user.activate', $user->id) }}" method="POST" class="d-inline">
                                    @csrf
                                    <button type="submit" class="btn btn-success btn-sm">
                                        Activate
                                    </button>
                                </form>
                            @endif

                            {{-- BOTÓN DESACTIVAR (solo si está activado) --}}
                            @if($user->activated == 1)
                                <form action="{{ route('admin.user.deactivate', $user->id) }}" method="POST" class="d-inline">
                                    @csrf
                                    <button type="submit" class="btn btn-warning btn-sm">
                                        Desactivate
                                    </button>
                                </form>
                            @endif

                            {{-- BOTÓN ELIMINAR (siempre visible) --}}
                            <form action="{{ route('admin.user.delete', $user->id) }}" method="POST" class="d-inline">
                                @csrf
                                <button type="submit" class="btn btn-danger btn-sm">
                                    Delete
                                </button>
                            </form>

                            {{-- BOTÓN EDITAR (siempre visible) --}}
                            <form action="{{ route('admin.user.edit', $user->id) }}" method="GET" class="d-inline">
                                <button type="submit" class="btn btn-info btn-sm">Edit</button>
                            </form>

                        </div>
                    </td>
                </tr>
                @endif
            @endforeach
        </tbody>
    </table>
</div>
@endsection
