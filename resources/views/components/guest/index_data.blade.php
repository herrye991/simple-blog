<div class="post-list">
@foreach($articles as $data)
    <div class="post-preview">
    <a href="{{ route('guest.articles.show', $data->id) }}">
        <h2 class="post-title">{{ $data->title }}</h2>
        <h3 class="post-subtitle">{{ $data->sub_title }}</h3>
    </a>
    @php
        $viewed = $views->where('articles_id', $data->id)->count();
    @endphp
    <p class="post-meta">Posted on {{ Carbon\Carbon::parse($data->created_at)->format('F,d Y') }}, <em>({{ $viewed }}x Viewed)</em></p>
    </div>
    <hr>
@endforeach
</div>
