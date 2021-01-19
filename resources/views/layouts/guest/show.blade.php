@extends('layouts.guest.app', [
    'title' => $articles->title,
    'sub_title' => $articles->sub_title
])

@section('content')
@endsection

@section('js')
<script src="{{ asset('articles.js') }}"></script>
@endsection