<?php
namespace App\Observers;
use App\Notifications\NewItem;
use Kordy\Ticketit\Models\Ticket;
use App\User;
class ItemObserver
{
    public function created(Ticket $item)
    {
        $author = $item->subject;
        $users = User::all();
        foreach ($users as $user) {
            $user->notify(new NewItem($item,$author));
        }
    }
}