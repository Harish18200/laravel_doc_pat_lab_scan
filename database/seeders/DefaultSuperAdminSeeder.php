<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;

class DefaultSuperAdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create the default user
        $user = User::create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('12345678'),
        ]);

        //     // Create the "super admin" role
        //     $role = Role::create(['name' => 'super admin']);

        //     // Create default permissions
        //     $permissions = [
        //         'view new user',
        //         'edit new user',
        //         'delete new user',
        //         'assign role',
        //         'view user',
        //         'edit user',
        //         'delete user',
        //         'create role',
        //         'view role',
        //         'edit role',
        //         'create users bulk data',
        //         'create NSAP scheme bulk data',
        //         'edit NSAP scheme',
        //         'delete NSAP scheme',
        //         'view NSAP scheme',
        //     ];

        //     foreach ($permissions as $permission) {
        //         Permission::create(['name' => $permission]);
        //     }

        //     // Assign all permissions to the "super admin" role
        //     $role->syncPermissions(Permission::all());

        //     // Assign the "super admin" role to the user
        //     $user->assignRole($role);

        //     // Define dummy roles and their permissions
        //     $dummyRoles = [
        //         'role1' => ['view new user', 'edit new user', 'view user', 'edit user'],
        //         'role2' => ['view new user', 'view user', 'delete user'],
        //         'role3' => ['view user', 'edit user', 'delete user', 'create users bulk data'],
        //         'role4' => ['view user', 'create users bulk data'],
        //         'role5' => ['create users bulk data', 'view new user', 'edit new user']
        //     ];

        //     foreach ($dummyRoles as $roleName => $rolePermissions) {
        //         $role = Role::create(['name' => $roleName]);

        //         $role->syncPermissions($rolePermissions);
        //     }
        //     User::create([
        //         'name' => "admin",
        //         'email' => "admin@gmail.com",
        //         'password' => Hash::make('12345678'),
        //     ]);
        // }
    }
}
