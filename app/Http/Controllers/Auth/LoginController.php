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
use App\Models\User;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

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
            'user_type' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()->first()
            ], 422);
        }

        $user = null;

        switch ($request->user_type) {
            case 1:
                $user = User::where('email', $request->email)->first();
                if ($user) {
                    $viewId = 6;
                    $route = 'expensesView';
                    session([
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                    ]);
                    break;
                }

            case 2:
                $user = Doctor::where('email', $request->email)->first();
                if ($user) {
                    $viewId = 1;
                    $route = 'dashboard';
                    session([
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                    ]);
                    break;
                }
            case 3:
                $user = Patient::where('email', $request->email)->first();
                if ($user) {
                    $viewId = 2;
                    $route = 'home';
                    session([
                        'user_id' => $user->id,
                        'user_name' => $user->patient_name,
                    ]);
                    break;
                }
            case 4:
                $user = Lab::where('email', $request->email)->first();
                if ($user) {
                    $viewId = 3;
                    $route = 'LabView';
                    session([
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                    ]);
                    break;
                }
            case 5:
                $user = Pharma::where('email', $request->email)->first();
                if ($user) {

                    $viewId = 4;
                    $route = 'pharmaView';
                    session([
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                    ]);
                    break;
                }
            case 6:
                $user = ScanDoctor::where('email', $request->email)->first();
                if ($user) {
                    $viewId = 5;
                    $route = 'scanInvoiceView';
                    session([
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                    ]);
                    break;
                }
            default:
            return redirect()->route('auth.login')->with('error', 'Invalid Crenditals');
        }
        if (!$user || !Hash::check($request->password, $user->password)) {
            return redirect()->route('auth.login')->with('error', 'Invalid Email or Password');
        }
        session()->put('viewId', $viewId);
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
