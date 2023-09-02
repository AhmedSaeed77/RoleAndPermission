<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RoleAndPermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachePermissions();
        $arrNameOfPermission = [
            'meesage-create' , 'meesage-show' , 'meesage-update' , 'meesage-delete' ,
            'product-create' , 'product-show' , 'product-update' , 'product-delete',
            'category-create' , 'category-show' , 'category-update' , 'category-delete'
        ];

        $permissions = collect($arrNameOfPermission)->map(function($permission){
            return ['name' => $permission , 'guard_name' => 'web'];
        });

        Permission::insert($permissions->toArray());


        $role = Role::create(['name' => 'super-admin'])->givePermissionTo($arrNameOfPermission);
    }
}
