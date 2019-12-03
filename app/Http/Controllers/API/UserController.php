<?php
use Laravel\Passport\Token;
namespace App\Http\Controllers\API;
use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Hash;
use App\User; 
use App\Categoryusers;
use Kordy\Ticketit\Models\Category;
use Illuminate\Support\Facades\Auth; 
use Validator;
use Carbon\Carbon;
use DB;
use Jaybizzle\CrawlerDetect\CrawlerDetect;
use jeremykenedy\LaravelLogger\App\Http\Traits\ActivityLogger;
class UserController extends Controller 
{
use ActivityLogger;
public $successStatus = 200;/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function index(){
        return response()->json(['success'=>$success], $this-> successStatus); 
    }
    
    public function login(){ 
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')]) || Auth::attempt(['noidentitas' => request('email'), 'password' => request('password')])){ 
            $user = Auth::user(); 
            $surveyor = Categoryusers::select('*')
            ->leftJoin('ticketit_categories', 'ticketit_categories_users.category_id', '=', 'ticketit_categories.id')
            ->where('user_id', $user->id)
            ->get()->pluck('name');
            $success['token'] =  $user->createToken('MyApp')-> accessToken; 
            if($user->ticketit_admin == 1 || $user->ticketit_agent == 1){
                return response()->json(
                    ['success' => $success,
                     'credentials' => $user,
                     'surveyor' => $surveyor], $this-> successStatus); 
                     ActivityLogger::activity('Manager/Surveyor Logged in');
            }
            else{
                return response()->json(
                    ['success' => $success,
                     'credentials' => $user], $this-> successStatus); 
                     ActivityLogger::activity('Mahasiswa Logged in');
            }

        } 

        else{ 
            return response()->json(['error'=>'Unauthorized'], 401); 
            ActivityLogger::activity("Unauthorized Access by using Email :" . request('email'));
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
ActivityLogger::activity("User Register");
    }
/** 
     * details api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function details() 
    { 
        $user = Auth::user(); 
        $surveyor = Categoryusers::select('*')
        ->where('user_id', $user->id)
        ->with('details')
        ->get();
        // if ($user->ticketit_agent == 1){
            // $agent = 
            // return response()->json(['message' => 'Authenticated', 'success' => $user,'surveyor' => ], $this-> successStatus); 
        // }
        // else{
            
            return response()->json(['message' => 'Authenticated', 'success' => $user, 'surveyor' => $surveyor], $this-> successStatus); 
            ActivityLogger::activity("View User Detail");
        // }
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
        ActivityLogger::activity("Credentials Change");
    } 

    public function updateToken(Request $request) 
    { 
        $validator = Validator::make($request->all(), [ 
            "token" => 'required'
        ]);
        $userget = Auth::user();
        $user = User::find($userget->id);
            if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
            }
            else {
                $user->firebasetoken = $request->input('token');
                $user->save();
                return response()->json(['message' => 'Firebase Token Changed', 'success' => $user], $this-> successStatus); 
            }
            ActivityLogger::activity("Token Change");
    } 

    public function resetToken(Request $request) 
    { 
        $userget = Auth::user();
        $user = User::findOrFail($userget->id);
                $user->firebasetoken = "";
                $user->save();
                return response()->json(['message' => 'Firebase Token Changed', 'success' => $user], $this-> successStatus); 
            

    } 
}
