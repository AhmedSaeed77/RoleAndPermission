<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RoleSeederNew extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Role::insert([  ['name' => 'super-admin' , 'guard_name' => 'web'],
                        ['name' => 'admin' , 'guard_name' => 'web'],
                        ['name' => 'editor' , 'guard_name' => 'web']
                    ]);
    }
}
