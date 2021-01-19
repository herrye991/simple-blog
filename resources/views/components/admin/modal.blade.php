<!-- Articles Create -->
<div class="modal fade articles-m" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Create Articles</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        {{ Form::open(array('id' => 'articles-form')) }}
        <div class="modal-body">
          {{ Form::hidden('id', '', array('class' => 'articles_id')) }}
          <div class="form-group">
            {{ Form::label('title', 'Title', array('class' => 'label-control')) }}
            {{ Form::text('title', '', array('class' => 'form-control title-text', 'required')) }}
          </div>
          <div class="form-group">
            {{ Form::label('sub_title', 'Sub Title', array('class' => 'label-control')) }}
            {{ Form::text('sub_title', '', array('class' => 'form-control sub_title-text', 'required')) }}
          </div>
          <div class="form-group">
            {{ Form::label('image', 'Image', array('class' => 'label-control')) }}
            {{ Form::file('image', array('class' => 'form-control', 'accept' => 'image/*')) }}
          </div>
          <div class="form-group">
            {{ Form::label('description', 'Description', array('class' => 'label-control')) }}
            {{ Form::textarea('description', '', array('class' => 'form-control description-text', 'required')) }}
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          {{ Form::submit('Save', array('class' => 'btn btn-primary articles-submit')) }}
        </div>
        {{ Form::close() }}
      </div>
    </div>
  </div>

  <!-- Profile -->
  <div class="modal fade profile-m" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Create Articles</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        {{ Form::open(array('id' => 'profile-form')) }}
        <div class="modal-body">
          <div class="form-group">
            {{ Form::label('name', 'Name', array('class' => 'label-control')) }}
            {{ Form::text('name', auth()->user()->name, array('class' => 'form-control name-text', 'required')) }}
          </div>
          <div class="form-group">
            {{ Form::label('instagram', 'Instagram', array('class' => 'label-control')) }}
            {{ Form::text('instagram', auth()->user()->instagram, array('class' => 'form-control instagram-text', 'required')) }}
          </div>
          <div class="form-group">
            {{ Form::label('facebook', 'Facebook', array('class' => 'label-control')) }}
            {{ Form::text('facebook', auth()->user()->facebook, array('class' => 'form-control facebook-text', 'required')) }}
          </div>
          <div class="form-group">
            {{ Form::label('github', 'Github', array('class' => 'label-control')) }}
            {{ Form::text('github', auth()->user()->github, array('class' => 'form-control github-text', 'required')) }}
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          {{ Form::submit('Save', array('class' => 'btn btn-primary profile-submit')) }}
        </div>
        {{ Form::close() }}
      </div>
    </div>
  </div>
  <!-- Setting -->
  <div class="modal fade setting-m" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Create Articles</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        {{ Form::open(array('id' => 'setting-form')) }}
        <div class="modal-body">
          <div class="form-group">
            {{ Form::label('old_password', 'Old Password', array('class' => 'label-control')) }}
            {{ Form::password('old_password', array('class' => 'form-control old_password-text', 'required')) }}
          </div>
          <div class="form-group">
            {{ Form::label('new_password', 'New Password', array('class' => 'label-control')) }}
            {{ Form::password('new_password', array('class' => 'form-control new_password-text', 'required')) }}
          </div>
          <div class="form-group">
            {{ Form::label('confirmation_new_password', 'Confirmation New Password', array('class' => 'label-control')) }}
            {{ Form::password('confirmation_new_password', array('class' => 'form-control confirmation_new_password-text', 'required')) }}
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          {{ Form::submit('Save', array('class' => 'btn btn-primary setting-submit')) }}
        </div>
        {{ Form::close() }}
      </div>
    </div>
  </div>
  <!-- Config -->
  <div class="modal fade config-m" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Create Articles</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        {{ Form::open(array('id' => 'config-form')) }}
        <div class="modal-body">
          <div class="form-group">
            {{ Form::label('app_name', 'Application Name', array('class' => 'label-control')) }}
            {{ Form::text('app_name', $app_name, array('class' => 'form-control app_name-text', 'required')) }}
          </div>
          <div class="form-group">
            {{ Form::label('app_sub_name', 'Application Sub Name', array('class' => 'label-control')) }}
            {{ Form::text('app_sub_name', $app_sub_name, array('class' => 'form-control app_sub_name-text', 'required')) }}
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          {{ Form::submit('Save', array('class' => 'btn btn-primary config-submit')) }}
        </div>
        {{ Form::close() }}
      </div>
    </div>
  </div>