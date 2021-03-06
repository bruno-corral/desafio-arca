<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('login.index');
    }

    public function toEnter(Request $request)
    {
        if (!Auth::attempt($request->only('email', 'password'))) {
            return redirect()
                ->back()
                ->withErrors('User and/or password incorrect!');
        }

        return redirect()->route('list_companies');
    }
}
