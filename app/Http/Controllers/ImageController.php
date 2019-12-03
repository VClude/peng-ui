<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator,Redirect,Response,File;
use App\Image;
use Illuminate\Support\Str;
class ImageController extends Controller
{

    public function index()
    {
        return view('image');
    }

    public function save(Request $request)
    {

        request()->validate([

            'image' => 'required',
            'image.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:4096'

        ]);

        if ($image = $request->file('image')) {
            foreach ($image as $files) {
            $destinationPath = public_path().'/images/';
            $profileImage = date('YmdHis') . "-" . Str::random(16) . "." . $files->getClientOriginalExtension();
            $files->move($destinationPath, $profileImage);
            $insert[]['image'] = "$profileImage";
            }
        }

        $check = Image::insert($insert);

        return Redirect::to("image")->withSuccess('Great! Image has been successfully uploaded.');

    }
}
