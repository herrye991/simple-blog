<?php

namespace App\Http\Controllers;

use App\Models\Articles;
use Illuminate\Http\Request;
use DB;
use URL;

class ArticlesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        return view('layouts.admin.articles.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Articles  $articles
     * @return \Illuminate\Http\Response
     */
    public function show(Articles $articles)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Articles  $articles
     * @return \Illuminate\Http\Response
     */
    public function edit(Articles $articles)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Articles  $articles
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Articles $articles)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Articles  $articles
     * @return \Illuminate\Http\Response
     */
    public function destroy(Articles $articles)
    {
        //
    }

    public function get_all_articles(Request $request)
    {
        if ($request->ajax()) {
            DB::statement(DB::raw('set @rownum=0'));
            $articles = Articles::select(
                DB::raw('@rownum  := @rownum  + 1 AS rownum'),
                'id',
                'title',
                'sub_title',
                'description',
                'image',
                'created_at',
                'updated_at'
            );
            
            return Datatables()->of($articles)
                ->addColumn('action', function ($data)
                {
                    $button = '
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle pull-left" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cog"></i></button>
                            <div class="dropdown-menu dropdown-example" aria-labelledby="dropdownMenu1">
                                <input class="title_'.$data->id.'" type="hidden" value="'.$data->title.'">
                                <input class="sub_title_'.$data->id.'" type="hidden" value="'.$data->sub_title.'">
                                <textarea style="display: none;" id="desc_'.$data->id.'">'.$data->description.'</textarea>
                                <input class="image_'.$data->id.'" type="hidden" value="'.url('articles/image/'.$data->image).'">
                                <a class="dropdown-item articles-view" href="#" data-id="'.$data->id.'">View <i class="fa fa-book"></i></a>
                                <a class="dropdown-item articles-edit" href="#" data-id="'.$data->id.'">Modify <i class="fa fa-edit"></i></a>
                                <a class="dropdown-item articles-delete" href="#" data-id="'.$data->id.'">Delete <i class="fa fa-trash"></i></a>
                            </div>
                        </div>
                    ';
                    return $button;
                })
                ->make(true);
        }
    }

    public function post_articles(Request $request)
    {
        if ($request->ajax()) {
            if ($request->id == '') {
                $articles = Articles::create([
                    'title' => $request->title,
                    'sub_title' => $request->sub_title,
                    'description' => $request->description,
                ]);
                if ($request->file('image')) {
                    $name = uniqid().'_'.$request->image->getClientOriginalName();
                    $request->image->move('articles/image', $name);
    
                    $articles['image'] = $name;
                    $articles->save();
                }
            } else {
                $articles = Articles::where('id', $request->id);
                $articles->update([
                    'title' => $request->title,
                    'sub_title' => $request->sub_title,
                    'description' => $request->description,
                ]);
                if ($request->file('image')) {
                    $name = uniqid().'_'.$request->image->getClientOriginalName();
                    $request->image->move('articles/image', $name);
                    $articles->update([
                        'image' => $name,
                    ]);
                }
            }
        }
    }

    public function delete_articles(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            Articles::where('id', $id)->delete();
        }
    }
}
