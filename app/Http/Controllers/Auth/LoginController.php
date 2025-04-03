<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Models\UserType;
use Illuminate\Support\Facades\Hash;
use App\Models\Doctor;
use App\Models\Patient;
use App\Models\Lab;
use App\Models\Pharma;
use App\Models\ScanDoctor;

class LoginController extends Controller
{
    public function index()
    {
        $userTypes = UserType::all();
        return view('auth.login', compact('userTypes'));
    }

    public function authenticate(Request $request)
    {
       
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
            'user_type' => 'required|in:2,3,4,5,6',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()->first()
            ], 422);
        }

        $user = null;

        switch ($request->user_type) {
            case 2:
                $user = Doctor::where('email', $request->email)->first();
                $viewId = 1;
                $route ='dashboard';
                break;
            case 3:
                $user = Patient::where('email', $request->email)->first();
                $viewId = 2;
                $route ='home';
                break;
            case 4:
                $user = Lab::where('email', $request->email)->first();
                $viewId = 3;
                $route ='LabView';
                break;
            case 5:
                $user = Pharma::where('email', $request->email)->first();

                $viewId = 4;
                $route ='pharmaView';
                break;
            case 6:
                $user = ScanDoctor::where('email', $request->email)->first();
                $viewId = 5;
                $route ='scanInvoiceView';
                break;
            default:
                return response()->json([
                    'status' => 'error',
                    'message' => 'Invalid user type'
                ], 400);
        }

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid email or password'
            ], 401);
        }
        session()->put('viewId', $viewId);
        session([
            'user_id' => $user->id,
            'user_name' => $user->name,
        ]);
        return  redirect()->route($route);
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        session()->forget(['user_id', 'user_name']);

        return response()->json([
            'status' => 'success',
            'message' => 'Logout successful!',
            'redirect_url' => route('auth.login'),
            'code' => 200
        ]);
    }
}
