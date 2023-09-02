<?php

namespace App\Http\Controllers;
use Spatie\Permission\Models\Role;
use App\Models\User;
use Spatie\Permission\Models\Permission;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        //Role::create(['name'=>'writer']);
        // Permission::create(['name'=>'write post']);
        // $permission = Permission::create(['name'=>'edit post']);
        $role = Role::findById(1);
        $permission = Permission::findById(2);
        // $permission->removeRole($role);
        //$role->givePermissionTo($permission);
        // $role->revokePermissionTo($permission);
        $user = auth()->user();
        // $user->givePermissionTo($permission);
        // $user->assignRole($role);
        // return $user->permissions;
        // return $user->getDirectPermissions();
        //return $user->getPermissionsViaRoles();
        // return $user->getAllPermissions();
        // return User::role('writer')->get();
        
        return view('home');
    }
}
