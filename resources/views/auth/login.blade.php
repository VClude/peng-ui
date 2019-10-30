@extends('layouts.app')

@section('page', __('Login'))

@section('auth_content')
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" method="POST" action="{{ route('login') }}">
                @csrf
					<span class="login100-form-title p-b-43">
						Login untuk melanjutkan
					</span>
					
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                       
                    <input id="email" type="email" class="input100 form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
						<span class="focus-input100"></span>
						<span class="label-input100">Email/NIP</span>
					</div>
                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input id="password" type="password" class="input100 form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                      
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>
                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" {{ old('remember') ? 'checked' : '' }}>
							<label class="label-checkbox100" for="ckb1">
								Ingat saya
							</label>
						</div>
					</div>
			

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
                        {{ __('Login') }}
						</button>
					</div>

				</form>

				<div class="login100-more">
					<div class="logo_holder">
						<img src="{{ asset('/FTUIM-Admin/UI_Logo.svg') }}"/>
						<h1>Sistem Pelaporan Keluhan Digital</h1>
						<h2>Fakultas Teknik Universitas Indonesia</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

@endsection
