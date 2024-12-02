<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Verified;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Http\RedirectResponse;

class VerifyEmailController extends Controller
{
    /**
     * Mark the authenticated user's email address as verified.
     *
     * @param EmailVerificationRequest $request
     * @return RedirectResponse
     */
    public function __invoke(EmailVerificationRequest $request): RedirectResponse
    {
        // Verifica si el correo electrónico ya está verificado
        if ($request->user()->hasVerifiedEmail()) {
            // Redirige a la ruta HOME con un parámetro "verified" si el correo ya está verificado
            return redirect()->intended(RouteServiceProvider::HOME.'?verified=1');
        }

        // Marca el correo electrónico como verificado y dispara el evento "Verified"
        if ($request->user()->markEmailAsVerified()) {
            event(new Verified($request->user()));
        }

        // Redirige a la ruta HOME con un parámetro "verified" después de la verificación
        return redirect()->intended(RouteServiceProvider::HOME.'?verified=1');
    }
}