cd .<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Kordy\Ticketit\Models;
use Kordy\Ticketit\Models\Agent;
use Kordy\Ticketit\Models\Category;
use Kordy\Ticketit\Models\Setting;
use Kordy\Ticketit\Models\Ticket;
use Kordy\Ticketit\Models\Image;
use DB;
class AllpiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }
    public function laporanall()
    {


        $laporall = Ticket::select(DB::raw('ticketit.id,ticketit.subject,ticketit.content as keluhan,ticketit.html as keluhan_html_format, ticketit_statuses.name as status, users.name as pelapor, ticketit_categories.name as kategori, ticketit.created_at, ticketit.updated_at'))
                    ->leftJoin('ticketit_statuses', 'ticketit.status_id', '=', 'ticketit_statuses.id')
                    ->leftJoin('users', 'ticketit.user_id', '=', 'users.id')
                    ->leftJoin('ticketit_categories', 'ticketit.category_id', '=', 'ticketit_categories.id')
                    ->get();
                    $urlgambar = url('/') . '/images/';
                    $bsd = array('urlgambar'=>$urlgambar);

                    foreach ($laporall as $p) {

                        $l = Image::select('image')
                                  ->where('ticket_id', $p->id)
                                  ->get();

                  $asd[] = array('keluhan'=>$p, 'lampiran'=>$l);

                  }
                  return response()->json([
                    'urlimg' => $urlgambar,
                    'result' => $asd
                ]);
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
