<?php

namespace App\Http\Controllers;
use App\Models\HomeCover;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Schema;

class ImageController extends Controller
{
    public function convert(Request $request)
    {
        $classifiedImg = $request->file('image');
        $filename = 'contactus' . '.webp';
        // $filename = time() . rand(1, 200) . '.webp';
        $path = "images\\covers\\" ;
        $image = \Image::make($request->file('image'))->encode('webp', 90)->save(public_path( $path. $filename));
        // ->resize(700, 600)
        
        $homecover = new HomeCover;
        $homecover->image = $filename;
        $homecover->indexx = 1;
        $homecover->save();
        return response()->json(['err'  => true,'message' => 'IMAGE CONVERT'], 200); 
    }

    public function getconvert()
    {
        $homecover = HomeCover::all();
        foreach($homecover as $hc)
        {
            $hc->image = url('images/covers/'.$hc->image);
        }
        return $homecover;
    }

    public function checktable()
    {
        ds(User::all());
        // if (Schema::hasTable('users')) 
        // {
        //     return response()->json(['err'  => true,'message' => 'table exist'], 200);
        // } 
        // else 
        // {
        //     return response()->json(['err'  => true,'message' => 'table not exist'], 200);
        // }
    }
}
