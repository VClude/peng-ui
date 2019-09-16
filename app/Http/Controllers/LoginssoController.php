<?php

namespace App\Http\Controllers;
use GuzzleHttp;
use Illuminate\Http\Request;
use SSO\SSO;
class LoginssoController extends Controller
{

    public function index()
    {
        SSO::authenticate();
        $user = SSO::getUser();
        echo $user->username . ' ' . $user->name;
    }

    public function login()
    {

        SSO::authenticate();
        $user = SSO::getUser();
        if ($user->role === 'mahasiswa'){
            $data = array(
                'eligible' => true,
                'username' => $user->username,
                'name' => $user->name,
                'role' => $user->role,
                'npm' => $user->npm,
                'org_code' => $user->org_code,
                'faculty' => $user->faculty,
                'prodi' => $user->study_program,
                'edu_program' => $user->educational_program
            );
        }
        else if ($user->role === 'staff'){
            $data = array(
                'eligible' => true,
                'username' => $user->username,
                'name' => $user->name,
                'role' => $user->role,
                'nip' => $user->nip
            );
        }
        else{
        $data = array(
            'eligible' => false,
            'username' => $user->username,
            'role' => $user->role,
            'name' => $user->name
        );
        }
        return response()->json($data);
    }

    public function logout()
    {
        SSO::logout('https://google.com');
    }

    public function store(Request $request)
    {

    }

    public function show($id)
    {

    }

    public function edit($id)
    {

    }

    public function update(Request $request, $id)
    {

    }

    public function destroy($id)
    {

    }
}
