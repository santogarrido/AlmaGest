@extends('layouts.app')

@section('content')

<div class="welcome-container">
    <div class="welcome-card">
        <h1 class="welcome-title">Welcome to Almagest</h1>
        <p class="welcome-text">
            Discover our features and join our community.<br>
            You can create an account or login to continue.
        </p>

        <div class="welcome-buttons">
            <a class="btn-welcome" href="{{ route('datesCompany') }}">Datos empresa</a>
            <a class="btn-welcome btn-outline">Pedidos</a>

        </div>
    </div>
</div>
@endsection