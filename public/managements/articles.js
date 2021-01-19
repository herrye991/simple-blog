$(document).ready(function () {
    // Datatables
    var articlesTables = $('#articlesTable');
    if (articlesTables.length > 0) {
        var myArtilesTable = articlesTables.DataTable({
            processing: true,
            serverSide: true,
            ajax: {
                url: "/api/admin/get_all_articles"
            },
            columns: [
                {
                    data: 'rownum',
                    name: 'rownum',
                },
                {
                    data: 'title',
                    name: 'title'
                },
                {
                    data: 'sub_title',
                    name: 'sub_title'
                },
                {
                    data: 'action',
                    name: 'action',
                    
                },
            ],
            columnDefs: [
                {
                    targets: [
                        0,
                        3
                    ],
                    searchable: false,
                    orderable: false,
                    className: 'text-center',
                    width: '8%'
                }
            ],
        });
    }
    // Articles View
    $(document).on('click', '.articles-view', function () {
        var id = $(this).attr('data-id');
        var title = $('.title_'+id).val();
        var sub_title = $('.sub_title_'+id).val();
        var description = $('textarea#desc_'+id).val();
        var image = $('.image_'+id).val();

        $('.articles-image').attr('src', image);
        $('.articles-view-m').modal('show');
        $('.articles-title').html(title);
        $('.articles-sub_title').html(sub_title);
        $('.articles-description').html(nl2br(description));
    });

    // Articles Edit
    $(document).on('click', '.articles-edit', function () {
        $('.articles-m').modal('show');
        var id = $(this).attr('data-id');
        var title = $('.title_'+id).val();
        var sub_title = $('.sub_title_'+id).val();
        var description = $('textarea#desc_'+id).val();
        $('.articles_id').val(id);
        $('.title-text').val(title);
        $('.sub_title-text').val(sub_title);
        $('.description-text').val(br2nl(description));
        $('.modal-title').html(title);
    });

    $(document).on('click', '.articles-create', function () {
        $('.articles-m').modal('show');
        $('.modal-title').html('Create Articles');
    });

    // Articles Delete
    $(document).on('click', '.articles-delete', function () {
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
          }).then((result) => {
            if (result.isConfirmed) {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                var id = $(this).attr('data-id');
                $.ajax({
                    url: '/api/admin/delete_articles',
                    type: 'POST',
                    dataType: 'html',
                    data: {id:id, _method: 'DELETE'},
                    success: function (data) {
                        Swal.fire({
                            title: 'Deleted',
                            icon: 'success',
                        });
                        myArtilesTable.ajax.reload();
                    },
                    error: function () {
                        Swal.fire({
                            title: 'Something Worng!',
                            icon: 'error',
                        });
                    }
                });
            }
        });
    });
    

    // Articles Submit
    $(document).on('click', '.articles-submit', function (e) {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        e.preventDefault();
        var form = $('#articles-form')[0];
        var data = new FormData(form);
        var id = $('.articles_id').val();
        url = '/api/admin/post_articles';
        $.ajax({
            url: url,
            type: 'POST',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            dataType: 'html',
            data: data,
            success: function (data) {
                Swal.fire('Saved!', '', 'success');
                $('.articles-m').modal('hide');
                myArtilesTable.ajax.reload();
                $('#articles-form').trigger('reset');
            },
            error: function(data) {
                Swal.fire('Something Worng!', '', 'error')
                $('.articles-m').modal('hide');
            }
        });
    });

    // Articles Form Reset
    $('.articles-m').on('hidden.bs.modal', function () {
        var id = $('.articles_id').val();
        if (id !== '') {
            $('#articles-form').trigger('reset');
        }
    });

    function br2nl (str, replaceMode) {   
        var replaceStr = (replaceMode) ? "\n" : '';
        // Includes <br>, <BR>, <br />, </br>
        return str.replace(/<\s*\/?br\s*[\/]?>/gi, replaceStr);
    }
    function nl2br (str, replaceMode, isXhtml) {
        var breakTag = (isXhtml) ? '<br />' : '<br>';
        var replaceStr = (replaceMode) ? '$1'+ breakTag : '$1'+ breakTag +'$2';
        return (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, replaceStr);
    }
});