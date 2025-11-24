@extends('layouts.admin')

@section('content')
<div class="container mt-5">
    <h2 class="mb-4 text-center text-white">Edit Article</h2>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul class="mb-0">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('admin.articles.update', $article->id) }}" method="POST" class="card p-4 shadow-sm border-0 form-box">
        @csrf

        {{-- Name --}}
        <div class="form-group">
            <input type="text" id="name" name="name" class="form-control" value="{{ old('name', $article->name) }}" required>
            <label for="name">Name</label>
            @error('name') <p class="error">{{ $message }}</p> @enderror
        </div>

        {{-- Description --}}
        <div class="form-group">
            <input type="text" id="description" name="description" class="form-control"
                   value="{{ old('description', $article->description) }}" required>
            <label for="description">Description</label>
        </div>

        {{-- Price min --}}
        <div class="form-group">
            <select id="price_min" name="price_min" required>
                <option value="">Select minimum price</option>
                @for ($i = 1; $i <= 50; $i++)
                    <option value="{{ $i }}" {{ old('price_min', $article->price_min) == $i ? 'selected' : '' }}>
                        {{ $i }}
                    </option>
                @endfor
            </select>
            <label for="price_min">Minimum Price</label>
        </div>

        {{-- Price max --}}
        <div class="form-group">
            <select id="price_max" name="price_max" required>
                <option value="">Select maximum price</option>
                @for ($i = 2; $i <= 100; $i++)
                    <option value="{{ $i }}" {{ old('price_max', $article->price_max) == $i ? 'selected' : '' }}>
                        {{ $i }}
                    </option>
                @endfor
            </select>
            <label for="price_max">Maximum Price</label>
        </div>

        {{-- Color --}}
        <div class="form-group">
            <select id="color_name" name="color_name" required>
                <option value="">Select a color</option>
                @php
                    $colors = ['Blanco','Azul','Amarillo','Rojo','Verde','Ocre','Violeta'];
                @endphp
                @foreach ($colors as $color)
                    <option value="{{ $color }}" {{ old('color_name', $article->color_name) == $color ? 'selected' : '' }}>
                        {{ $color }}
                    </option>
                @endforeach
            </select>
            <label for="color_name">Color</label>
        </div>

        {{-- Weight --}}
        <div class="form-group">
            <select id="weight" name="weight" required>
                <option value="">Select weight</option>
                @php
                    $weights = ['0.25','0.5','1','2','5','25'];
                @endphp
                @foreach ($weights as $w)
                    <option value="{{ $w }}" {{ old('weight', $article->weight) == $w ? 'selected' : '' }}>
                        {{ $w }} kg
                    </option>
                @endforeach
            </select>
            <label for="weight">Weight</label>
        </div>

        {{-- Size --}}
        @php
        $sizeType = 'number';
        $sizeNumber = '';
        $sizeSimple = '';
        $sizeCompoundWidth = '';
        $sizeCompoundHeight = '';

        if(str_contains($article->size, 'x')) {
            $sizeType = 'compound';
            [$sizeCompoundWidth, $sizeCompoundHeight] = explode(' x ', $article->size);
        } elseif(str_contains($article->size, 'cm')) {
            $sizeType = 'simple';
            $sizeSimple = $article->size;
        } else {
            $sizeType = 'number';
            $sizeNumber = $article->size;
        }
        @endphp

        <div class="size-field">
            <label class="main-label">Size</label>

            <div class="radio-group">
                <label>
                    <input type="radio" name="size_type" value="number" {{ old('size_type', $sizeType) == 'number' ? 'checked' : '' }} required>
                    1 número
                </label>
                <label>
                    <input type="radio" name="size_type" value="simple" {{ old('size_type', $sizeType) == 'simple' ? 'checked' : '' }} required>
                    Valor simple
                </label>
                <label>
                    <input type="radio" name="size_type" value="compound" {{ old('size_type', $sizeType) == 'compound' ? 'checked' : '' }} required>
                    Valor compuesto
                </label>
            </div>

            {{-- Campos ocultos --}}
            <div id="size_number" class="size-dependent" style="display:none;">
                <select name="size_number_value">
                    <option value="">Select size</option>
                    @php $sizes = ['nº1', 'nº2', 'nº3']; @endphp
                    @foreach ($sizes as $s)
                        <option value="{{ $s }}" {{ old('size_number_value', $sizeNumber) == $s ? 'selected' : '' }}>{{ $s }}</option>
                    @endforeach
                </select>
            </div>

            <div id="size_simple" class="size-dependent" style="display:none;">
                <select name="size_simple_value">
                    <option value="">Select size</option>
                    @php $sizes = ['3 cm', '5 cm', '10 cm', '20 cm', '30 cm']; @endphp
                    @foreach ($sizes as $s)
                        <option value="{{ $s }}" {{ old('size_simple_value', $sizeSimple) == $s ? 'selected' : '' }}>{{ $s }}</option>
                    @endforeach
                </select>
            </div>

            <div id="size_compound" class="size-dependent" style="display:none;">
                <select name="size_compound_width">
                    <option value="">Select width</option>
                    @php $sizes = ['5 cm', '10 cm', '15 cm', '20 cm', '30 cm', '50 cm', '60 cm']; @endphp
                    @foreach ($sizes as $s)
                        <option value="{{ $s }}" {{ old('size_compound_width', $sizeCompoundWidth) == $s ? 'selected' : '' }}>{{ $s }}</option>
                    @endforeach
                </select>
                x
                <select name="size_compound_height">
                    <option value="">Select height</option>
                    @php $sizes = ['0.25 cm', '0.5 cm', '1 cm', '2 cm', '5 cm', '25 cm']; @endphp
                    @foreach ($sizes as $s)
                        <option value="{{ $s }}" {{ old('size_compound_height', $sizeCompoundHeight) == $s ? 'selected' : '' }}>{{ $s }}</option>
                    @endforeach
                </select>
            </div>

            {{-- Hidden para enviar el valor combinado --}}
            <input type="hidden" name="size" id="size_hidden" value="{{ old('size', $article->size) }}">
        </div>

        <script>
        document.addEventListener('DOMContentLoaded', function() {
            const radios = document.querySelectorAll('input[name="size_type"]');
            const dependents = {
                number: document.getElementById('size_number'),
                simple: document.getElementById('size_simple'),
                compound: document.getElementById('size_compound')
            };
            const hidden = document.getElementById('size_hidden');

            function updateSize() {
                const selected = document.querySelector('input[name="size_type"]:checked')?.value;
                // Mostrar/ocultar selects
                for (let key in dependents) {
                    dependents[key].style.display = (key === selected) ? 'inline-block' : 'none';
                }

                // Actualizar hidden
                let value = '';
                if (selected === 'number') {
                    value = dependents.number.querySelector('select').value;
                } else if (selected === 'simple') {
                    value = dependents.simple.querySelector('select').value;
                } else if (selected === 'compound') {
                    const w = dependents.compound.querySelector('select[name="size_compound_width"]').value;
                    const h = dependents.compound.querySelector('select[name="size_compound_height"]').value;
                    value = `${w} x ${h}`;
                }
                hidden.value = value;
            }

            // Detectar cambios en radiobuttons y selects
            radios.forEach(r => r.addEventListener('change', updateSize));
            Object.values(dependents).forEach(d => {
                d.querySelectorAll('select').forEach(s => s.addEventListener('change', updateSize));
            });

            // Inicializa al cargar la página
            updateSize();
        });
        </script>



        {{-- Family --}}
        <div class="form-group mt-4">
            <select id="family_id" name="family_id" required>
                <option value="">Select a family</option>
                @foreach(\App\Models\Family::all() as $family)
                    <option value="{{ $family->id }}" {{ old('family_id', $article->family_id) == $family->id ? 'selected' : '' }}>
                        {{ $family->name }}
                    </option>
                @endforeach
            </select>
            <label for="family_id">Family</label>
        </div>

        {{-- Botones --}}
        <div class="d-flex justify-content-between mt-4">
            <a href="{{ route('admin.articles.index') }}" class="btn btn-secondary">Return</a>
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </form>
</div>


@endsection

