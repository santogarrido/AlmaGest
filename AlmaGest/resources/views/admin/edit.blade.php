@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <h2 class="mb-4 text-center text-white">Edit User</h2>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul class="mb-0">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('admin.user.update', $user->id) }}" method="POST" class="card p-4 shadow-sm border-0 form-box">
        @csrf
        <div class="mb-3">
            <label for="firstname" class="form-label">Name</label>
            <input type="text" id="firstname" name="firstname" class="form-control" value="{{ old('firstname', $user->firstname) }}" required>
        </div>

        <div class="mb-3">
            <label for="secondname" class="form-label">Second Name</label>
            <input type="text" id="secondname" name="secondname" class="form-control" value="{{ old('secondname', $user->secondname) }}">
        </div>

        <div class="d-flex justify-content-between">
            <a href="{{ route('admin.index') }}" class="btn btn-secondary">Return</a>
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
    </form>
</div>
@endsection
