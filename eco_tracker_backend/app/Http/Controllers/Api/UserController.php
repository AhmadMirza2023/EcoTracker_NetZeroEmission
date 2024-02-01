<?php

namespace App\Http\Controllers\Api;

use Exception;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function register(Request $request)
    {
        try {
            $request->validate([
                'username' => 'required|min:4',
                'email' => 'required|email|unique:users',
                'password' => 'required|min:8',
            ]);

            $user = User::create([
                'username' => $request->username,
                'email' => $request->email,
                'password' => Hash::make($request->password),
            ]);

            $token_result = $user->createToken('auth_token')->plainTextToken;

            return response()->json([
                'message' => 'Register success',
                'access_token' => $token_result,
                'token_type' => 'Bearer',
                'data' => $user,
            ], 201);
        } catch (Exception $err) {
            return response()->json([
                'message' => 'Registration failed',
                'err' => $err,
            ], 500);
        }
    
    }
    public function login(Request $request)
    {
        try {
            $request->validate([
                'email' => 'required|email',
                'password' => 'required',
            ]);

            $credentials = request(['email', 'password']);
            if (!Auth::attempt($credentials)) {
                return response()->json([
                    'message' => 'Unauthorized',
                ], 401);
            }

            $user = User::where('email', $request->email)->first();
            if (!Hash::check($request->password, $user->password )) {
                throw new Exception("Invalid credentials", 401);
                
            }

            $token_result = $user->createToken('auth_token')->plainTextToken;

            return response()->json([
                'message' => 'Login success',
                'access_token' => $token_result,
                'token_type' => 'Bearer',
                'data' => $user,
            ], 200);
        } catch (Exception $err) {
            return response()->json([
                'message' => 'Something went wrong',
                'err' => $err,
            ], 500);
        }
    }

    public function readAll(Request $request)
    {
        return response()->json([
            'message' => 'Data user berhasil diambil',
            'data' => $request->user(),
        ], 200);
    }
}
