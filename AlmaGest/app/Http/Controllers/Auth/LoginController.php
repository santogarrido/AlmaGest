<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Hash;
use App\Models\User;


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

    
    protected function attemptLogin(Request $request)
    {
        $user = User::where('email', $request->email)->first();

        // Si el usuario no existe o está marcado como eliminado
        if (!$user || $user->deleted == 1) {
            $request->merge(['deleted_user' => true]);
            return false;
        }

        // Si el usuario existe pero no está activado
        if ($user->activated != 1) {
            $request->merge(['not_activated' => true]);
            return false;
        }


        if (!Hash::check($request->password, $user->password)) {
            $request->merge(['wrong_password' => true]);
            return false;
        }


        // Si pasa las condiciones anteriores, intenta autenticar
        return $this->guard()->attempt(
            $this->credentials($request),
            $request->filled('remember')
        );
    }

    /**
     * Respuesta personalizada cuando el login falla
     */
    protected function sendFailedLoginResponse(Request $request)
    {
        // Caso 1: usuario eliminado (deleted = 1)
        if ($request->has('deleted_user')) {
            throw ValidationException::withMessages([
                $this->username() => ['El usuario no existe.'],
            ]);
        }

        // Caso 2: usuario no activado
        if ($request->has('not_activated')) {
            throw ValidationException::withMessages([
                $this->username() => ['Tu cuenta no está activada. Contacta con el administrador.'],
            ]);
        }


        if ($request->has('wrong_password')) {
            throw ValidationException::withMessages([
                'password' => ['La contraseña es incorrecta.'],
            ]);
        }

        // Caso 3: credenciales incorrectas
        throw ValidationException::withMessages([
            $this->username() => [trans('auth.failed')],
        ]);
    }  

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        $this->middleware('auth')->only('logout');
    }
}
