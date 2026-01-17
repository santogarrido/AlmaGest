<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Catálogo de Productos</title>
<style>
body { font-family: DejaVu Sans, sans-serif; font-size: 11px; }
table { width: 100%; border-collapse: collapse; }
th, td { border: 1px solid #000; padding: 5px; text-align: left; vertical-align: top; }
.header { font-weight: bold; font-size: 13px; background: #eee; }
.company-name { color: red; font-weight: bold; text-align: center; }
</style>
</head>
<body>

<table>
    {{-- Fila de título --}}
    <tr>
        <td class="header" colspan="4" style="text-align:center;">
            CATÁLOGO de productos de la empresa
        </td>
        <td class="header company-name" colspan="4">
            {{ $companyName }}
        </td>
    </tr>

    {{-- Encabezados de columnas --}}
    <tr>
        <th>Product id</th>
        <th>Family name</th>
        <th>Article name</th>
        <th>Article description</th>
        <th>Product price</th>
        <th>Article color name</th>
        <th>Article weight</th>
        <th>Article size</th>
    </tr>

    {{-- Filas con datos --}}
    @foreach($products as $product)
    <tr>
        <td>{{ $product->id }}</td>
        <td>{{ $product->article->family->name ?? '' }}</td>
        <td>{{ $product->article->name ?? '' }}</td>
        <td>{{ $product->article->description ?? '' }}</td>
        <td>{{ $product->price }}</td>
        <td>{{ $product->article->color_name ?? '' }}</td>
        <td>{{ $product->article->weight ?? '' }}</td>
        <td>{{ $product->article->size ?? '' }}</td>
    </tr>
    @endforeach
</table>

</body>
</html>
