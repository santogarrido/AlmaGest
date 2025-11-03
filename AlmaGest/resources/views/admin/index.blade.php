@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <h1 class="mb-4">Panel de Administración</h1>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-bordered text-center align-middle">
        <thead class="table-light">
            <tr>
                <th>Nombre</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
                @if ($user->type != 'A')
                    <tr>
                    <td>{{ $user->firstname }} {{ $user->secondname  }}</td>
                    <td>
                        <div class="d-flex gap-2 justify-content-center flex-wrap">
                            {{-- BOTÓN ACTIVAR (solo si tiene el email confirmado y está desactivado) --}}
                            @if($user->email_confirmed == 1 && $user->activated == 0)
                                <form action="{{ route('admin.user.activate', $user->id) }}" method="POST" class="d-inline">
                                    @csrf
                                    <button type="submit" class="btn btn-success btn-sm">
                                        Activar
                                    </button>
                                </form>
                            @endif

                            {{-- BOTÓN DESACTIVAR (solo si está activado) --}}
                            @if($user->activated == 1)
                                <form action="{{ route('admin.user.deactivate', $user->id) }}" method="POST" class="d-inline">
                                    @csrf
                                    <button type="submit" class="btn btn-warning btn-sm">
                                        Desactivar
                                    </button>
                                </form>
                            @endif

                            {{-- BOTÓN ELIMINAR (siempre visible) --}}
                            <form action="{{ route('admin.user.delete', $user->id) }}" method="POST" class="d-inline">
                                @csrf
                                <button type="submit" class="btn btn-danger btn-sm">
                                    Eliminar
                                </button>
                            </form>

                            {{-- BOTÓN EDITAR (siempre visible) --}}
                            <a href="{{ route('admin.user.edit', $user->id) }}" class="btn btn-info btn-sm">
                                Editar
                            </a>

                        </div>
                    </td>
                </tr>
                @endif
            @endforeach
        </tbody>
    </table>
</div>
@endsection
