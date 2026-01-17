<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ficha de empresa</title>
    <style>
        body { font-family: DejaVu Sans, sans-serif; font-size: 11px; }
        table { width: 100%; border-collapse: collapse; }
        td { border: 1px solid #000; padding: 6px; vertical-align: top; }
        .title { font-weight: bold; font-size: 14px; background: #eee;}
        .center { text-align: center; }
        .logo { width: 90px; text-align: center; }
    </style>
</head>
<body>

<table>

    {{-- CABECERA --}}
    <tr>
        <td colspan="4" class="title">Ficha empresa</td>
        <td class="center title">
            <strong>Código</strong><br>
            {{ $company->id ?? '' }}
        </td>
    </tr>

    {{-- LOGO + NOMBRE --}}
    <tr>
        <td rowspan="5" class="logo">
            <img src="{{ public_path('images/logo.png') }}" alt="Logo" style="max-width:90px; height:auto; display:block; margin:auto;">
        </td>
        <td><strong>Nombre</strong></td>
        <td colspan="3">{{ $company->name ?? '' }}</td>
    </tr>

    {{-- DIRECCIÓN --}}
    <tr>
        <td><strong>Dirección</strong></td>
        <td colspan="3">{{ $company->address ?? '' }}</td>
    </tr>

    {{-- POBLACIÓN + CIF --}}
    <tr>
        <td><strong>Población</strong></td>
        <td>{{ $company->city ?? '' }}</td>
        <td><strong>CIF/NIF</strong></td>
        <td>{{ $company->cif ?? '' }}</td>
    </tr>

    {{-- CONTACTO + CARGO --}}
    <tr>
        <td><strong>Persona de contacto</strong></td>
        <td>{{ $contactName ?? '' }}</td>
        <td><strong>Cargo</strong></td>
        <td>Gerente</td>
    </tr>

    {{-- EMAIL + TELÉFONO --}}
    <tr>
        <td><strong>Correo electrónico</strong></td>
        <td>{{ $company->email ?? '' }}</td>
        <td><strong>Teléfono</strong></td>
        <td>{{ $company->phone ?? '' }}</td>
    </tr>

    {{-- PARTE INFERIOR --}}
    <tr>
        <td colspan="5">
            <strong>Plazo de entrega:</strong> {{ $deliveryTerm->description ?? '' }}
            &nbsp;&nbsp;&nbsp;&nbsp;
            <strong>Descuentos:</strong> {{ $discount->discount ?? '' }} %
        </td>
    </tr>

    <tr>
        <td colspan="5">
            <strong>Portes:</strong> {{ $transport->price ?? '' }} €
        </td>
    </tr>

    <tr>
        <td colspan="5">
            <strong>Condiciones de pago:</strong> {{ $paymentTerm->description ?? '' }}
        </td>
    </tr>

    <tr>
        <td colspan="5">
            <strong>Entidad bancaria:</strong> {{ $bankEntity->name ?? '' }}
        </td>
    </tr>

</table>

</body>
</html>
