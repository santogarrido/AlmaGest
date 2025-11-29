@extends('layouts.admin')
@vite(['resources/js/app.js'])

@section('content')

<div class="container mt-5">
    <h1 class="mb-4">Articles Management</h1>

    {{-- Mensaje de éxito --}}
    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    {{-- Botón crear --}}
    <a href="{{ route('admin.articles.create') }}" class="btn btn-primary mb-3">
        <i class="fa-solid fa-plus"></i> New Article
    </a>

    @if($articles->isEmpty())

        <div class="alert alert-info">
            There are no articles available.
        </div>

    @else

        <table class="table table-bordered text-center align-middle">
            <thead class="table-dark">
                <tr>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Family</th>
                    <th>Min Price</th>
                    <th>Max Price</th>
                    <th>Color</th>
                    <th>Weight</th>
                    <th>Size</th>
                    <th>Actions</th>
                </tr>
            </thead>

            <tbody>
                @foreach($articles as $article)
                    <tr>
                        <td>{{ $article->name }}</td>
                        <td>{{ $article->description }}</td>
                        <td>{{ $article->family->name }}</td>
                        <td>{{ $article->price_min }} €</td>
                        <td>{{ $article->price_max }} €</td>
                        <td>{{ $article->color_name }}</td>
                        <td>{{ $article->weight }} kg</td>
                        <td>{{ $article->size }}</td>

                        <td>
                            <div class="d-flex gap-2 justify-content-center flex-wrap">

                                {{-- Edit --}}
                                <form action="{{ route('admin.articles.edit', $article->id) }}" method="GET" class="d-inline">
                                    <button type="submit" class="btn btn-info btn-sm">Edit</button>
                                </form>

                                {{-- Delete --}}
                                <form action="{{ route('admin.articles.delete', $article->id) }}"
                                      method="POST"
                                      class="d-inline delete-form">
                                    @csrf
                                    <button type="submit" class="btn btn-danger btn-sm">
                                        Delete
                                    </button>
                                </form>

                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>

        </table>

    @endif

</div>

@endsection
