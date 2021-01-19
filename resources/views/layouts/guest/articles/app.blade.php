<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>{{ config('app.name') . ' | ' . $title }}</title>

  @include('components.guest.css')
</head>

<body>

  @include('components.guest.nav')

  @include('components.guest.articles.header')

  <!-- Post Content -->
  <article>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          @yield('content')
        </div>
      </div>
    </div>
  </article>

  <hr>

  @include('components.guest.footer')

  @include('components.guest.js')

</body>

</html>
