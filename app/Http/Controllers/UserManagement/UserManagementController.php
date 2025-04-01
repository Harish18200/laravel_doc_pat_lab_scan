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
            // Validate request data
            $request->validate([
                'name' => 'required|string|max:255',
                'email' => 'required|email',
                'contact_no' => 'nullable|string|max:20',
                'alternative_no' => 'nullable|string|max:20',
                'address' => 'nullable|string',
                'department_id' => 'nullable|integer',
                'gender_id' => 'nullable|integer',
                'marital_status_id' => 'nullable|integer',
                'dob' => 'nullable|date',
                'date_of_joining' => 'nullable|date',
                'password' => 'required|min:6', // Required only for new users
            ]);

            // Prepare user data
            $data = [
                'name' => $request->name,
                'username' => $request->username,
                'email' => $request->email,
                'contact_no' => $request->contact_no,
                'alternative_no' => $request->alternative_no,
                'address' => $request->address,
                'department_id' => $request->department_id,
                'gender_id' => $request->gender_id,
                'marital_status_id' => $request->marital_status_id,
                'dob' => $request->dob,
                'date_of_join' => $request->date_of_joining,
                'address' => $request->address,
                'remarks' => $request->remarks,
                'branch' => $request->branch_id,
                'scan_user' => $request->scan_user,
            ];


            if ($request->filled('password')) {
                $data['password'] = bcrypt($request->password);
            }
            if ($request->hasFile('profile_picture')) {
                $image = $request->file('profile_picture');
                $imageName = time() . '_' . uniqid() . '.' . $image->getClientOriginalExtension();
                $image->move(public_path('uploads/userPictures'), $imageName);
                $data['profile_pic'] = 'uploads/userPictures/' . $imageName;
            }

            // Create or update the user
            $model = UserManagement::updateOrCreate(
                ['id' => $request->id],
                $data
            );

            if ($model->wasRecentlyCreated) {
                Log::info('User created successfully', ['user' => $model]);
            } else {
                Log::info('User updated successfully', ['user' => $model]);
            }

            return redirect()->route('userView')->with('success', 'User saved successfully.');
        } catch (\Exception $e) {
            Log::error('Error saving user', ['error' => $e->getMessage(), 'request' => $request->all()]);
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
