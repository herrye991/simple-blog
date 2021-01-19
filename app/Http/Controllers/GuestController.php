<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Articles;
use App\Models\Views;

class GuestController extends Controller
{
    // WEB
    public function index()
    {
        $articles_count = Articles::count();
        $articles = Articles::orderBy('created_at', 'desc')->paginate(4);
        $views = Views::orderBy('created_at', 'desc');
        return view('layouts.guest.index', compact('views', 'articles', 'articles_count'));
    }

    public function show(Request $request, $id)
    {
        $articles_count = Articles::where('id', $id)->count();
        $articles = Articles::where('id', $id)->first();
        if ($articles_count > 0) {
            Views::create([
                'articles_id' => $articles->id,
                'ip_address' => $request->ip(),
            ]);
            return view('layouts.guest.articles.index', compact('articles'));
        } else {
            abort(404);
        }
    }

    // API
    public function get_articles(Request $request)
    {
        if ($request->ajax()) {
            $articles_count = Articles::count();
            $articles = Articles::orderBy('created_at', 'desc')->paginate(4);
            $views = Views::orderBy('created_at', 'desc');
            return view('components.guest.index_data', compact('views', 'articles', 'articles_count'))->render();
        }
    }
}
