@extends('layouts.app')

@section('content')
<div class="register-container">
    <div class="register-card">
        <h2 class="register-title">{{ __('Enterprise data') }}</h2>

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul class="mb-0">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif



        <form method="POST" action="" >

            {{-- Codigo --}}
            <div class="form-group">
                <input type="int" id="id" name="id" class="form-control" value="{{ old('id', $company->id) }}">
                <label for="codigo">Codigo</label>
            </div>

            {{-- Company name --}}
            <div class="form-group">
                <input type="text" id="name" class="form-control" value="{{ old('name', $company->name) }}">
                <label for="name">Name</label>
            </div>



            {{-- Dirección --}}
            <div class="form-group">
                <input type="text" id="address" name="address" class="form-control" value="{{ old('address', $company->address) }}">
                <label for="address">Address</label>
            </div>

            {{-- Ciudad --}}
            <div class="form-group">
                <input type="text" id="city" name="city" class="form-control" value="{{ old('city', $company->city) }}">
                <label for="city">City</label>
            </div>

            {{-- CIF --}}
            <div class="form-group">
                <input type="text" id="cif" name="cif" class="form-control" value="{{ old('cif', $company->cif) }}">
                <label for="cif">CIF</label>
            </div>

            {{-- Email --}}
            <div class="form-group">
                <input type="email" id="email" name="email" class="form-control" value="{{ old('email', $company->email) }}">
                <label for="email">Email</label>
            </div>

            {{-- Teléfono --}}
            <div class="form-group">
                <input type="text" id="phone" name="phone" class="form-control" value="{{ old('phone', $company->phone) }}">
                <label for="phone">Phone</label>
            </div>

            {{-- Delivery term --}}
            <div class="form-group">
                <input type="number" id="del_term_id" name="del_term_id" class="form-control" value="{{ old('del_term_id', $company->del_term_id) }}">
                <label for="del_term_id">Delivery Term</label>
            </div>

            {{-- Transport --}}
            <div class="form-group">
                <input type="number" id="transport_id" name="transport_id" class="form-control" value="{{ old('transport_id', $company->transport_id) }}">
                <label for="transport_id">Transport</label>
            </div>

            {{-- Payment term --}}
            <div class="form-group">
                <input type="number" id="payment_term_id" name="payment_term_id" class="form-control" value="{{ old('payment_term_id', $company->payment_term_id) }}">
                <label for="payment_term_id">Payment Term</label>
            </div>

            {{-- Bank entity --}}
            <div class="form-group">
                <input type="number" id="bank_entity_id" name="bank_entity_id" class="form-control" value="{{ old('bank_entity_id', $company->bank_entity_id) }}">
                <label for="bank_entity_id">Bank Entity</label>
            </div>

            {{-- Discount --}}
            <div class="form-group">
                <input type="number" id="discount_id" name="discount_id" class="form-control" value="{{ old('discount_id', $company->discount_id) }}">
                <label for="discount_id">Discount</label>
            </div>


            <div>
                <div id="action-buttons" style="display: none;">
                    <div>
                        <button class="btn-register">
                            {{ __('Descargar Ficha de la Empresa') }}
                        </button>
                    </div>
                    <br>
                    <div>
                        <button class="btn-register">
                            {{ __('Descargar Catálogo de Productos') }}
                        </button>
                    </div>
                    <br>
                    <div>
                        <button class="btn-register">
                            {{ __('Enviar PDFs por Email') }}
                        </button>
                    </div>
                </div>
                <br>
                <div>
                    <a href="{{ route('home') }}" class="btn-welcome btn-outline btn-back">
                        Volver
                    </a>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection



<script>
document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('form');
    const actionButtons = document.getElementById('action-buttons');
    const inputs = form.querySelectorAll('input');

    function checkForm() {
        // Recorre todos los inputs y verifica si están vacíos
        let allFilled = true;
        inputs.forEach(input => {
            if (input.value.trim() === '') {
                allFilled = false;
            }
        });

        // Muestra u oculta los botones según
        actionButtons.style.display = allFilled ? 'block' : 'none';
    }

    // Ejecutar al cargar y cada vez que cambie un input
    checkForm();
    inputs.forEach(input => input.addEventListener('input', checkForm));
});
</script>
