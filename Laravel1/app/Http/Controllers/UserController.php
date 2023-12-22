<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Request as FacadesRequest;
use Illuminate\Support\Facades\View;
use Illuminate\Validation\Rule;

class UserController extends Controller
{
    //
    public function index()
    {
        return 'Hellow User for UserController';
    }

    public function login()
    {
        if(View::exists('user.login')){
          return view('user.login');  
        } else {
        //   return response()->view('errors.404');
          return  abort(404);
        }
        
    }

    public function process(Request $request)
    {
        $validated = $request->validate([
            "email" => ['required', 'email'],
            "password" => 'required'
        ]);

        if(auth()->attempt($validated)) {
            $request->session()->regenerate();

            return redirect('/')->with('message', 'Welcome back!');
        }

        return back()->withErrors(['email' => 'Login Failed'])->onlyInput('email');
    }

    public function register()
    {
        return view('user.register');
    }

    public function logout(Request $request)
    {
        auth()->logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/login')->with('message', 'Logout successfully');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            "name" => ['required', 'min:3'],
            "email" => ['required', 'email', Rule::unique('users', 'email')],
            "password" => 'required|confirmed|min:6'
        ]);

        // $validated['password'] = Hash::make($validated['password']);
        $validated['password'] = bcrypt($validated['password']);

        $user = User::create($validated);

        auth()->login($user);


    }


    public function show($id)
    {

        // $data = array(
        //     "id" => $id,
        //     "name" => "John Doe",
        //     "age" => 22,
        //     "email" => "Johndoe32@gmail.com"
        // );

        // return  view('user', $data);

        $data = ["data" => "Data from database"];
        return view('user')
            ->with('id', $id)
            ->with('name', 'John Doe')
            ->with('age', 23)
            ->with('email', 'JohnDoe32@gmail.com')
            ->with('data', $data);
    }
}
