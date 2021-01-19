$(document).ready(function () {
    // Show Profile Form
    $(document).on('click', '.profile', function () {
        $('.profile-m').modal('show');
    });

    // Ajax Profile
    $(document).on('click', '.profile-submit', function (e) {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        e.preventDefault();
        var form = $('#profile-form')[0];
        var data = new FormData(form);
        url = '/api/admin/profile';
        $.ajax({
            url: url,
            type: 'POST',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            dataType: 'html',
            data: data,
            success: function (data) {
                Swal.fire('Saved!', 'Reload this page to take effect!', 'success');
                $('.profile-m').modal('hide');
            },
            error: function(data) {
                Swal.fire('Something Worng!', '', 'error')
                $('.profile-m').modal('hide');
            }
        });
    });

    // Show Setting Form
    $(document).on('click', '.setting', function () {
        $('.setting-m').modal('show');
    });

    // Ajax Setting
    $(document).on('click', '.setting-submit', function (e) {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        e.preventDefault();
        var form = $('#setting-form')[0];
        var data = new FormData(form);
        url = '/api/admin/setting';
        $.ajax({
            url: url,
            type: 'POST',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            dataType: 'text',
            data: data,
            success: function (data) {
                Swal.fire({
                    title: 'Saved!', 
                    text: 'Reload this page to take effect!', 
                    icon: 'success',
                    onClose: () => {
                        window.location.href = '/admin/logout';
                    }
                });
                $('.setting-m').modal('hide');
            },
            error: function(error) {
                var errors = JSON.parse(error.responseText);
                Swal.fire({
                    title: 'Something Wrong!', 
                    text: errors.msg, 
                    icon: 'error',
                    onClose: () => {
                        $('#setting-form').trigger('reset');
                    }
                });
                $('.setting-m').modal('hide');
            }
        });
    });

    // Show Config Form
    $(document).on('click', '.config', function () {
        $('.config-m').modal('show');
    });

    // Ajax Config
    $(document).on('click', '.config-submit', function (e) {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        e.preventDefault();
        var form = $('#config-form')[0];
        var data = new FormData(form);
        url = '/api/admin/config';
        $.ajax({
            url: url,
            type: 'POST',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            dataType: 'html',
            data: data,
            success: function (data) {
                Swal.fire('Saved!', 'Reload this page to take effect!', 'success');
                $('.config-m').modal('hide');
            },
            error: function(data) {
                Swal.fire('Something Worng!', '', 'error')
                $('.config-m').modal('hide');
            }
        });
    });

    $(document).on('click', '.logout', function () {
        Swal.fire({
            title: 'Are you sure want logout?',
            text: "",
            icon: 'info',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'logout!'
          }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = '/admin/logout';
            }
        });
    });
});