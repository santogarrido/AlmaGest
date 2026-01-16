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
</style>
</head>
<body>

<table>
    {{-- Fila de título --}}
    <tr>
        <td class="header">CATÁLOGO de productos de la empresa</td>
        <td class="header">{{ $companyName }}</td>
    </tr>

    {{-- Encabezados de columnas --}}
    <tr>
        <th>products.id</th>
        <th>families.name</th>
        <th>article.name</th>
        <th>article.description</th>
        <th>product.price</th>
        <th>article.color_name</th>
        <th>article.weight</th>
        <th>article.size</th>
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
