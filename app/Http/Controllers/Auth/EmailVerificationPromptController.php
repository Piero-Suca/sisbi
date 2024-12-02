<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class EmailVerificationPromptController extends Controller
{
    /**
     * Display the email verification prompt.
     *
     * @param Request $request
     * @return RedirectResponse|View
     */
    public function __invoke(Request $request): RedirectResponse|View
    {
        // Verifica si el usuario ya ha verificado su correo electrónico
        if ($request->user()->hasVerifiedEmail()) {
            // Redirige a la ruta HOME si el correo ya está verificado
            return redirect()->intended(RouteServiceProvider::HOME);
        } else {
            // Muestra la vista de verificación de correo electrónico si no está verificado
            return view('auth.verify-email');
        }
    }
}