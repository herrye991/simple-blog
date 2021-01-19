$(document).ready(function(){
    var page = 1;
    var totalPage = $('#totalPage').val();
    if (page == totalPage) {
        $('.next').addClass('d-none', true);
    }
    $(document).on('click', '.next', function(e){
        e.preventDefault(); 
        page += 1;
        fetch_data(page);
        console.log(page);
        if (page == totalPage) {
            $('.next').addClass('d-none', true);
        }
        if (page > 1) {
            $('.previous').removeClass('d-none', true);
        }
    });
    $(document).on('click', '.previous', function(e){
        e.preventDefault(); 
        page -= 1;
        fetch_data(page);
        console.log(page);
        if (page == 1) {
            $('.previous').addClass('d-none', true);
        }
        if (page !== totalPage) {
            $('.next').removeClass('d-none', true);
        }
    });
    function fetch_data(page)
    {
        $.ajax({
            url:"/api/guest/get_articles?page="+page,
            success:function(data){
                $('.post-list').html(data);
            }
        });
    }
});
