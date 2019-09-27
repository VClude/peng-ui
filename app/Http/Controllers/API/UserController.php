<?php
namespace App\Http\Controllers\API;
use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Hash;
use App\User; 
use Illuminate\Support\Facades\Auth; 
use Validator;
class UserController extends Controller 
{
public $successStatus = 200;/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function login(){ 
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){ 
            $user = Auth::user(); 
            $success['token'] =  $user->createToken('MyApp')-> accessToken; 
            return response()->json(
                ['success' => $success,
                 'credentials' => $user], $this-> successStatus); 
        } 
        else{ 
            return response()->json(['error'=>'Unauthorized'], 401); 
        } 
    }
/** 
     * Register api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function register(Request $request) 
    { 
        $validator = Validator::make($request->all(), [ 
            'name' => 'required', 
            'email' => 'required|email', 
            'password' => 'required',
         //   'noidentitas' => 'required', 
            'c_password' => 'required|same:password', 
        ]);
if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }
        $input = $request->all(); 
        $input['password'] = bcrypt($input['password']); 
        $user = User::create($input); 
        $success['token'] =  $user->createToken('MyApp')-> accessToken; 
        $success['name'] =  $user->name;
       // $success['noidentitas'] =  $user->noidentitas;
return response()->json(['success'=>$success], $this-> successStatus); 
    }
/** 
     * details api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function details() 
    { 
        $user = Auth::user(); 
        return response()->json(['message' => 'Authenticated', 'success' => $user], $this-> successStatus); 
    } 
    public function editUser(Request $request) 
    { 
        $validator = Validator::make($request->all(), [ 
            "old_password" => 'required',
            "name" => 'required|min:3|max:50',
            // "orgcode" => 'required|min:3|max:50',
            // "faculty" => 'required|min:3|max:50',
            // "studyprog" => 'required|min:3|max:50',
            // "eduprog" => 'required|min:3|max:50',
            // "noidentitas" => 'required|integer',
            // "imgurl" => 'image|mimes:jpeg,png,jpg,gif,svg|max:4096',
            "new_password" => 'required|min:3|max:50'
        ]);
        $userget = Auth::user();
        $user = User::find($userget->id);
            if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
            }
            else if (Hash::check($request->input('old_password'), $userget->password)) {
                $hashpw = bcrypt($request->input('new_password')); 
                $user->name = $request->input('name');
                $user->password = $hashpw;
                $user->save();
                return response()->json(['message' => 'Information Changed', 'success' => $user], $this-> successStatus); 
            }
        else{
            return response()->json(['message' => 'Old Password not match'], 401); 
        }

    } 
}
