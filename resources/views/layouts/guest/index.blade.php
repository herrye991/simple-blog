@extends('layouts.guest.app', [
    'title' => $app_name,
    'sub_title' => $app_sub_name
])

@section('content')
    @if($articles_count > 0)
        @include('components.guest.index_data')
        @php
            $result = substr(($articles->total() / 4) + 1, 0, 1);
        @endphp
        <input type="hidden" id="totalPage" value="{{ $result }}">
        <div class="row">
            <div class="col-md-12">
                <div class="clearfix">
                    <a class="btn btn-primary float-right next" href="#">Next &rarr;</a>
                    <a class="btn btn-primary float-right previous d-none" href="#">&larr; Previous</a>
                </div>
            </div>
            
        </div>        
    @else
    <p class="text-center">No Articles Found</p>
    @endif
@endsection

@section('js')
<script src="{{ asset('articles.js') }}"></script>
@endsection