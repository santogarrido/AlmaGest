@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center align-items-center" style="min-height: 80vh;">
        <div class="col-md-6 col-lg-4">
            <div class="card">
                <div class="card-body text-center">

                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <div class="d-grid gap-3">
                        <a href="{{ url('/empresa') }}" class="btn btn-primary">
                            Datos de empresa
                        </a>

                        <a href="{{ url('/pedidos') }}" class="btn btn-primary">
                            Pedidos
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection