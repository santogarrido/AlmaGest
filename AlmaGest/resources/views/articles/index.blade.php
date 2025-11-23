@extends('layouts.admin')
@vite(['resources/js/app.js'])

@section('content')

<div class="container mt-5">
    <h1 class="mb-4" style="color: white;">Articles Management</h1>

    {{-- Mensaje de éxito --}}
    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    {{-- Botón crear --}}
    <a href="{{ route('admin.articles.create') }}" class="btn btn-primary mb-3">
        Create Article
    </a>

    @if($articles->isEmpty())

        <div class="alert alert-info">
            There are no articles available.
        </div>

    @else

        <table class="table table-bordered text-center align-middle">
            <thead class="table-light">
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
                        <td>{{ $article->price_min }}</td>
                        <td>{{ $article->price_max }}</td>
                        <td>{{ $article->color_name }}</td>
                        <td>{{ $article->weight }}</td>
                        <td>{{ $article->size }}</td>

                        <td>
                            <div class="d-flex gap-2 justify-content-center flex-wrap">

                                {{-- Edit --}}
                                <a href="{{ route('admin.articles.edit', $article->id) }}"
                                   class="btn btn-info btn-sm">
                                   Edit
                                </a>

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
