<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    // public function index()
    // {
    //     // if (!Auth::check()) {
    //     //     return redirect()->route('login')->with('error', 'Please log in first.');
    //     // }

    //     // $user = Auth::user();

    //     // $permissions = [
    //     //     'view new user' => 'dashboard.user.view.new',
    //     //     'view user' => 'dashboard.user.view',
    //     //     'create role' => 'dashboard.role.create',
    //     //     'view role' => 'dashboard.role.view',
    //     //     'upload excel file' => 'dashboard.excel.create',
    //     //     'view excel file' => 'dashboard.excel.view',
    //     // ];

    //     // foreach ($permissions as $permission => $route) {
    //     //     if (method_exists($user, 'can') && $user->can($permission)) {
    //     //         return redirect()->route($route);
    //     //     }
    //     // }

    //     return view('dashboard.home');
    // }


    public function index(Request $request)
    {
        return view('dashboard.home');
    }
}
