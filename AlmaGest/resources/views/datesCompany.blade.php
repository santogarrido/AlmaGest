@extends('layouts.app')

@section('content')
<div class="dataCompany-container">
    <div class="dataCompany-card">
        <h2 class="dataCompany-title">{{ __('Enterprise data') }}</h2>

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
            @csrf

            {{-- Codigo --}}
            <div class="form-group">
                <input type="int" id="id" name="id" class="form-control" value="{{ old('id', $company->id) }}">
                <label for="codigo">Codigo</label>
            </div>

            {{-- Company name --}}
            <div class="form-group">
                <input type="text" id="name" name="name" class="form-control" value="{{ old('name', $company->name) }}">
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

            {{-- User isContact --}}
            <div class="form-group">
                <input type="text" id="isContact" name="isContact" class="form-control" value="{{ old('isContact', $userIsContact) }}">
                <label for="isContact">Persona de contacto</label>
            </div>


            {{-- Cargo Gerente --}}
            <div class="form-group">
                <input type="text" class="form-control" value="Gerente" readonly>
                <label>Cargo</label>
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
                    <select id="del_term_id" name="del_term_id" class="form-control">
                        <option value="">Seleccione un plazo</option>
                        @foreach ($deliveryTerms as $term)
                            <option value="{{ $term->id }}"
                                {{ old('del_term_id', $company->del_term_id) == $term->id ? 'selected' : '' }}>
                                {{ $term->description }}
                            </option>
                        @endforeach
                </select>
                <label for="del_term_id">Delivery Term</label>
            </div>

            {{-- Transport --}}
            <div class="form-group">
                <select id="transport_id" name="transport_id" class="form-control">
                    <option value="">Seleccione portes</option>
                    @foreach ($transports as $transport)
                        <option value="{{ $transport->id }}"
                            {{ old('transport_id', $company->transport_id) == $transport->id ? 'selected' : '' }}>
                            {{ $transport->price }} €
                        </option>
                    @endforeach
                </select>
                <label for="transport_id">Transport</label>
            </div>

            {{-- Payment term --}}
            <div class="form-group">
                    <select id="payment_term_id" name="payment_term_id" class="form-control">
                        <option value="">Seleccione condición</option>
                        @foreach ($paymentTerms as $term)
                            <option value="{{ $term->id }}"
                                {{ old('payment_term_id', $company->payment_term_id) == $term->id ? 'selected' : '' }}>
                                {{ $term->description }}
                            </option>
                        @endforeach
                    </select>
                <label for="payment_term_id">Payment Term</label>
            </div>

            {{-- Bank entity --}}
            <div class="form-group">
                <select id="bank_entity_id" name="bank_entity_id" class="form-control">
                    <option value="">Seleccione entidad</option>
                     @foreach ($bankEntities as $bank)
                        <option value="{{ $bank->id }}"
                            {{ old('bank_entity_id', $company->bank_entity_id) == $bank->id ? 'selected' : '' }}>
                            {{ $bank->name }}
                        </option>
                    @endforeach
                </select>
                <label for="bank_entity_id">Bank Entity</label>
            </div>

            {{-- Discount --}}
            <div class="form-group">
                <select id="discount_id" name="discount_id" class="form-control" required>
                    <option value="">Seleccione descuento</option>
                    @foreach ($discounts as $discount)
                        <option value="{{ $discount->id }}"
                            {{ old('discount_id', $company->discount_id) == $discount->id ? 'selected' : '' }}>
                            {{ $discount->discount }} %
                        </option>
                    @endforeach
                </select>
                <label for="discount_id">Discount</label>
            </div>

            <div>
                <div id="action-buttons" style="display: none;">
                    <div>
                        <button type="submit" formaction="{{ route('pdf.company') }}" class="btn-register">
                            Descargar Ficha de la Empresa
                        </button>
                    </div>
                    <br>
                    <div>
                        <button type="submit" formaction="{{ route('pdf.catalog') }}" class="btn-register">
                            Descargar Catálogo de Productos
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
