@extends('layouts.guest.articles.app', [
    'title' => $articles->title,
    'sub_title' => $articles->sub_title
])

@section('content')
{!! nl2br($articles->description) !!}
@endsection

@section('js')
<script src="{{ asset('articles.js') }}"></script>
@endsection