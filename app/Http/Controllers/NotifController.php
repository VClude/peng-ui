<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notif;
use Illuminate\Support\Facades\Auth; 
use Kordy\Ticketit\Traits\ContentEllipse;
use Kordy\Ticketit\Traits\Purifiable;
use App\User;
class NotifController extends Controller
{
    use ContentEllipse;
    use Purifiable;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }
    public function getMynotif()
    {
        $reqID = Auth::user()->id;
        $notif = Notif::where('user_id', $reqID)->get();
        return response()->json($notif, 200);
    }
    public function iReadmynotif(Request $request)
    {
        $reqID = Auth::user()->id;
        $notif = Notif::where($userget->id);
        $notif = Notif::where('user_id', $catID);
        $notif->readed = 1;
        $notif->save();
        return response()->json($notif, 200);
    }
    public function pushNotif(array $data){

    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
