<?php

//namespace App\Http\Controllers\Auth;
namespace App\Http\Controllers\AdminControllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Artisan;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    //protected $redirectTo = RouteServiceProvider::HOME;
    protected $redirectTo = 'admin/dashboard';

    public function showLoginForm()
    {
        return view('login');
    }

    public function login(Request $request)
    {
        //dd($request);
        $this->validateLogin($request);

        if ($this->attemptLogin($request)) {
            return $this->sendLoginResponse($request);
        }

        return $this->sendFailedLoginResponse($request);
    }


    public function __construct()
    {
        $this->middleware('guest:admin')->except('logout');
    }

    public function logout(Request $request)
    {
        $this->guard()->logout();

        $request->session()->invalidate();

        return redirect()->route('admin.login');
    }

    protected function guard()
    {
        return Auth::guard('admin');
    }
}
