<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(Request $request)
    {
        //return $request;
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'role_id' => $request->role_id,
            'password' => Hash::make($request->password),
        ]);
        $token =  $user->createToken($user->email)->plainTextToken;
        return response()->json(['Access-token' =>'bearer  '. $token,'user' => $user,]);

    }

    public function login(Request $request)
    {
        //return $request;
        $this->validate($request, [
                                    'email'   => 'required|email',
                                    'password' => 'required|min:6'
                                ]);
        $user = User::where('email', $request->email)->first();
        if (auth()->attempt(['email' => $request->email, 'password' => $request->password], false)) 
        {
            $token =  $user->createToken($request->email)->plainTextToken;
            return response()->json(['Access-token' =>'bearer  '. $token,
                'name' => $user->name,
                'email' => $user->email,
                'user_id' => $user->id,
            ]);
        }
        return response()->json(['api_status' => '401','message' => 'UnAuthenticated',], 401);
    }

    public function logout()
    {
        auth()->user()->currentAccessToken()->delete();
        return response()->json(['api_status' => '200','message' => 'log out success',], 200);
    }
}
