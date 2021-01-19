<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>{{ $app_name . ' | ' . 'Login' }}</title>

  @include('components.admin.login.css')

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                    <div class="text-center">
                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                    </div>
                    {{ Form::open(array('route' => 'login.post', 'class' => 'user'))}}
                        <div class="form-group">
                            {{ Form::email('email', '', ['id' => 'exampleInputEmail', 'class' => 'form-control form-control-user', 'aria-describedby' => 'emailHelp', 'placeholder' => 'Enter Email Address...']) }}
                        </div>
                        <div class="form-group">
                            {{ Form::password('password',  ['id' => 'exampleInputPassword', 'class' => 'form-control form-control-user', 'placeholder' => 'Password']) }}
                        </div>
                        <div class="form-group">
                            <div class="custom-control custom-checkbox small">
                                {{ Form::checkbox('remember_me', 1, null, array('id' => 'customCheck', 'class' => 'custom-control-input')) }}
                                {{ Form::label('customCheck', 'Remember Me', array('class' => 'custom-control-label')) }}
                            </div>
                        </div>
                        {{ Form::submit('Login', array('class' => 'btn btn-primary btn-user btn-block')) }}
                    {{ Form::close() }}
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  @include('components.admin.login.js')

</body>

</html>
