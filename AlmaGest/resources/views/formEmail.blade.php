@extends('layouts.app')

@section('content')
<div class="formEmail-container">

    <div class="formEmail-card">
        <h2 class="formEmail-title">{{ __('Email Form') }}</h2>

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul class="mb-0">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif


        <form action="{{ route('email.send') }}" method="POST">
            @csrf

            @foreach($users as $user)
                <div>
                    <h3>{{ $user->firstname }} {{ $user->secondname }}</h3>
                    <p>{{ $user->email }}</p>
                    <p>{{ $user->company->name }}</p>
                </div>
                <br>
            @endforeach

            <div>
                <div>
                    <button type="submit" class="btn-welcome btn-register btn-back">
                        Enviar PDFs
                    </button>
                </div>
                <br>
                <div>
                    <a href="{{ route('datesCompany') }}" class="btn-welcome btn-outline btn-back">
                        Volver
                    </a>
                </div>
            </div>
        </form>

    </div>
</div>
@endsection
