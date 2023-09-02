<?php

namespace App\Http\Controllers;
use Spatie\Permission\Models\Role;
use App\Models\User;
use Spatie\Permission\Models\Permission;
use Illuminate\Http\Request;

class RoleContoller extends Controller
{
    public function addrole(Request $request)
    {
        // return $request;
        $role = Role::create(['name'=>$request->name]); 
        return response()->json($role, 404);

        
    }
}
