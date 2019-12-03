<?php

namespace Kordy\Ticketit\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Kordy\Ticketit\Models;
use Cache;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Kordy\Ticketit\Helpers\LaravelVersion;
use Kordy\Ticketit\Models\Agent;
use Kordy\Ticketit\Models\Category;
use Kordy\Ticketit\Models\Setting;
use Kordy\Ticketit\Models\Ticket;
use Kordy\Ticketit\Models\Image;
use App\User; 
use Illuminate\Support\Facades\Auth; 
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class CommentsController extends Controller
{
    public function __construct()
    {
        $this->middleware('Kordy\Ticketit\Middleware\IsAdminMiddleware', ['only' => ['edit', 'update', 'destroy']]);
        $this->middleware('Kordy\Ticketit\Middleware\ResAccessMiddleware', ['only' => 'store']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'ticket_id'   => 'required|exists:ticketit,id',
            'content'     => 'required|min:6',
        ]);

        $comment = new Models\Comment();

        $comment->setPurifiedContent($request->get('content'));

        $comment->ticket_id = $request->get('ticket_id');
        $comment->user_id = \Auth::user()->id;
        $comment->save();

        $ticket = Models\Ticket::find($comment->ticket_id);
        $ticket->updated_at = $comment->created_at;
        $ticket->save();

        return back()->with('status', trans('ticketit::lang.comment-has-been-added-ok'));
    }


    public function jsonstore(Request $request)
    {
        $asd = Validator::make($request->all(), [ 
            'ticket_id'   => 'required|exists:ticketit,id',
            'content'     => 'required|min:6'
        ]);
        if ($asd->fails()) { 
            return response()->json(['error'=>$asd->errors()], 401);            
        }
        $comment = new Models\Comment();

        $comment->setPurifiedContent($request->get('content'));

        $comment->ticket_id = $request->get('ticket_id');
        $comment->user_id = \Auth::user()->id;
        $comment->save();

        $ticket = Models\Ticket::find($comment->ticket_id);
        $ticket->updated_at = $comment->created_at;
        $ticket->save();

        return response()->json(['success'=>'OK', 'comment'=>$comment], 200); 

    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param int     $id
     *
     * @return Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        //
    }
}
