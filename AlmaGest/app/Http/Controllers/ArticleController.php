<?php

namespace App\Http\Controllers;

use App;
use App\Models\Article;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $articles = Article::where('deleted', 0)->get();

        return view('articles.index' , compact('articles'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('articles.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Article::create([
            'name' => $request->name,
            'description' => $request->description,
            'price_min' => $request->price_min,
            'price_max' => $request->price_max,
            'color_name' => $request->color_name,
            'weight' => $request->weight,
            'size' => $request->size,
            'family_id' => $request->family_id,

        ]);

        return redirect()->route('admin.articles.index')
            ->with('success', 'Artículo creado correctamente.');

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $article = Article::findOrFail($id);
        return view('articles.edit', compact('article'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $article = Article::findOrFail($id);

        $request->validate([
            'name' => 'required|string|max:50',
            'description'=> 'nullable|string|max:150',
            'price_min' => 'required|numeric|digits_between:1,10',
            'price_max' => 'required|numeric|gt:price_min|digits_between:1,10',
            'color_name' => 'nullable|string|max:20',
            'weight' => 'required|regex:/^\d{1,10}(\.\d{1,2})?$/',
            'size' => 'nullable|string|max:20',
        ]);

        $article->name = $request->name;
        $article->description = $request->description;
        $article->price_min = $request->price_min;
        $article->price_max = $request->price_max;
        $article->color_name = $request->color_name;
        $article->weight = $request->weight;
        $article->size = $request->size;
        $article->family_id = $request->family_id;
        $article->save();

        return redirect()->route('admin.articles.index')->with('success', 'Article updated.');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete(string $id)
    {
        $article = Article::findOrFail($id);
        $article->deleted = 1;
        $article->save();

        return redirect()->back()->with('success', 'Article deletetion was successful.');
    }
}
