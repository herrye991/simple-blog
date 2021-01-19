<!-- Page Header -->
<header class="masthead" style="background-image: url('{{ asset("articles/image/$articles->image") }}')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-heading">
            <h1>{{ $articles->title }}</h1>
            <h2 class="subheading">{{ $articles->sub_title }}</h2>
            <span class="meta">Posted on {{ Carbon\Carbon::parse($articles->created_at)->format('F,d Y') }}</span>
          </div>
        </div>
      </div>
    </div>
  </header>