<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTicketitCommentsTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'ticketit_comments';

    /**
     * Run the migrations.
     * @table ticketit_comments
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->longText('content');
            $table->longText('html')->nullable()->default(null);
            $table->unsignedInteger('user_id');
            $table->unsignedInteger('ticket_id');

            $table->index(["user_id"], 'ticketit_comments_user_id_index');

            $table->index(["ticket_id"], 'ticketit_comments_ticket_id_index');
            $table->nullableTimestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
     public function down()
     {
       Schema::dropIfExists($this->tableName);
     }
}
