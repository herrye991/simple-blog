<div class="modal fade articles-view-m" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <div class="col-xs-12 col-lg-12">
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
          </div>
        </div>
        <div class="modal-body">
        <div style="position: relative;text-align: center;color: #fff; background-color: #2e2e2e; height: 500px;">
            <img class="articles-image" src="{{ asset("assets/img/home-bg.jpg") }}" style="width: 100%; max-height: 500px; object-fit: cover;opacity: 0.4;">
            <span style="position: absolute;top: 50%;left: 50%;transform: translate(-50%, -50%);">
            <b><h1 class="modal-title articles-title"></h1></b>
            <b><h4 class="articles-sub_title"></h4></b>
            </span>
            </div>
            <hr>
        <p class="articles-description"></p>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>