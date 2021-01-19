@extends('layouts.admin.app', [
    'title' => 'Articles'
])

@section('css')
  <!-- Custom styles for this page -->
  <link href="{{ asset('assets/admin/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
@endsection

@section('content')
<div class="col-xl-12 col-lg-12">
<div class="card shadow mb-4">
  <div class="card-body">
    <div class="table-responsive">
      <table class="table table-bordered" id="articlesTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>No</th>
            <th>Title</th>
            <th>Sub Title</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
        </tbody>
      </table>
    </div>
  </div>
</div>
</div>

@endsection

@section('js')
  <!-- Page level plugins -->
  <script src="{{ asset('assets/admin/vendor/datatables/jquery.dataTables.min.js') }}"></script>
  <script src="{{ asset('assets/admin/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>
@endsection

@section('modal')
    @include('components.admin.articles.modal')
@endsection