<?php

namespace App\Http\Controllers\UserManagement;

use App\Http\Controllers\Controller;
use App\Models\UserManagement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class UserManagementController extends Controller
{
    public function userView()
    {
        $users = UserManagement::all();
        return view('Users.index', compact('users'));
    }

    public function userCreate()
    {
        return view('Users.create');
    }

    public function userStore(Request $request)
    {
        try {
            $model = UserManagement::updateOrCreate(
                ['id' => $request->id],
                [
                    'name' => $request->name,
                    'email' => $request->email,
                    'mobile' => $request->mobile,
                    'address' => $request->address,
                    'department' => $request->department,
                    'gender' => $request->gender,
                    'age' => $request->age,
                    'dob' => $request->dob,
                ]
            );

            if ($model->wasRecentlyCreated) {
                Log::info('User created successfully', ['user' => $model]);
            } else {
                Log::info('User updated successfully', ['user' => $model]);
            }

            return redirect()->route('userView')->with('success', 'User saved successfully.');
        } catch (\Exception $e) {
            Log::error('Error saving user', ['error' => $e->getMessage()]);
            return redirect()->back()->withErrors(['error' => 'An error occurred while saving the user.']);
        }
    }

    public function userEdit($id)
    {
        $user = UserManagement::findOrFail($id);
        return view('Users.edit', compact('user'));
    }


    public function userDelete(Request $request)
    {
        $users =  UserManagement::find($request->user_id);
        if ($users) {
            $users->delete();
            return redirect()->route('userView')->with('success', 'User deleted successfully.');
        }
        return redirect()->route('userView')->with('error', 'Appointment not found!');
    }
}
