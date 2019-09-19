<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth; 
use Illuminate\Support\Facades\Input; 
use Kordy\Ticketit\Models;
use Kordy\Ticketit\Models\Agent;
use Kordy\Ticketit\Models\Category;
use Kordy\Ticketit\Models\Setting;
use Kordy\Ticketit\Models\Ticket;
use Kordy\Ticketit\Models\Image;
use Kordy\Ticketit\Models\Status;
use Optimus\Bruno\EloquentBuilderTrait;
use Optimus\Bruno\LaravelController;
use DB;
use Validator;

class ComplainController extends LaravelController
{
    use EloquentBuilderTrait;
    public $successStatus = 200;
    // protected $tickets;
    // public function __construct(Ticket $tickets, Agent $agent)
    // {
    //     $this->middleware('Kordy\Ticketit\Middleware\ResAccessMiddleware', ['only' => ['show']]);
    //     $this->middleware('Kordy\Ticketit\Middleware\IsAgentMiddleware', ['only' => ['edit', 'update']]);
    //     $this->middleware('Kordy\Ticketit\Middleware\IsAdminMiddleware', ['only' => ['destroy']]);

    //     $this->tickets = $tickets;
    //     $this->agent = $agent;
    // }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }
    // public function getComplain()
    // {
    //     $resourceOptions = $this->parseResourceOptions();
    //     $query = Ticket::query();
    //     $this->applyResourceOptions($query, $resourceOptions);
    //     $ticket = $query->select(DB::raw('ticketit.id,ticketit.subject,ticketit.content as keluhan,ticketit.html as keluhan_html_format, ticketit_statuses.name as status, users.name as pelapor, ticketit_categories.name as kategori, ticketit.created_at, ticketit.updated_at'))
    //     ->leftJoin('ticketit_statuses', 'ticketit.status_id', '=', 'ticketit_statuses.id')
    //     ->leftJoin('users', 'ticketit.user_id', '=', 'users.id')
    //     ->leftJoin('ticketit_categories', 'ticketit.category_id', '=', 'ticketit_categories.id')
    //     ->orderBy('created_at', 'asc')
    //     ->get();
    //     $urlgambar = url('/') . '/images/';
    //     $bsd = array('urlgambar'=>$urlgambar);

    //     foreach ($ticket as $p) {

    //         $l = Image::select('image')
    //                   ->where('ticket_id', $p->id)
    //                   ->get();

    //   $asd[] = array('keluhan'=>$p, 'lampiran'=>$l);

    //   }
    public function getComplain()
    {
        $limit = Input::get('limit');
        $page = Input::get('page');
        if($limit == null){
            $limit = 100;
        }
        if($page == null){
            $page = 1;
        }
        // elseif($page == 0){
        //     $page = 1;
        // }
        // else{
        //     $page++;
        // }
    
        $tticket = Ticket::get();
        $cticket = count($tticket);
        $urlgambar = url('/') . '/images/';
        $bsd = array('urlgambar'=>$urlgambar);

        $pt = ceil($cticket/$limit);
        // $pagetotal = number_format($pt, ((int) $pt == $pt ? 0 : 2), '.', ',');

        $resourceOptions = $this->parseResourceOptions();
        $query = Ticket::query();
        $this->applyResourceOptions($query, $resourceOptions);
        $ticket = $query->get();
        // $ticket = $this->tickets->selectRaw('*,ticketit.id as t_id')->where('ticket_id',$id)->with('gambar')->first();
        $parsedData = $this->parseData($ticket, $resourceOptions, 'ticket');
        $c2ticket = count($ticket);
        $meta[] = array('count' => "$c2ticket", 'page_total' => "$pt", 'total' => "$cticket", 'limit' => "$limit", 'page' => "$page");
        return response()->json([
            'urlimg'    => $urlgambar,
            'meta'      => $meta,
            'results'   => $parsedData
        ]);
        // return $this->response($parsedData);
    }
    public function getCategory()
    {
        $resourceOptions = $this->parseResourceOptions();
        $query = Category::query();
        $this->applyResourceOptions($query, $resourceOptions);
        $ticket = $query->get();
        $parsedData = $this->parseData($ticket, $resourceOptions, 'ticket');
        
        return $this->response($parsedData);
    }
    public function getStatus()
    {
        $resourceOptions = $this->parseResourceOptions();
        $query = Status::query();
        $this->applyResourceOptions($query, $resourceOptions);
        $ticket = $query->get();
        $parsedData = $this->parseData($ticket, $resourceOptions, 'ticket');
        
        return $this->response($parsedData);
    }
    public function newcomp(){

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

    public function laporanstatus($name)
    {
        $laporall = Ticket::select(DB::raw('ticketit.id,ticketit.subject,ticketit.content as keluhan,ticketit.html as keluhan_html_format, ticketit_statuses.name as status, users.name as pelapor, ticketit_categories.name as kategori, ticketit.created_at, ticketit.updated_at'))
                    ->leftJoin('ticketit_statuses', 'ticketit.status_id', '=', 'ticketit_statuses.id')
                    ->leftJoin('users', 'ticketit.user_id', '=', 'users.id')
                    ->leftJoin('ticketit_categories', 'ticketit.category_id', '=', 'ticketit_categories.id')
                    ->where('ticketit_statuses.name', $name)
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
