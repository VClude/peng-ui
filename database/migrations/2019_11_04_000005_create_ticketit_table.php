<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTicketitTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'ticketit';

    /**
     * Run the migrations.
     * @table ticketit
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('subject', 191);
            $table->longText('content');
            $table->string('location', 191)->nullable()->default(null);
            $table->longText('html')->nullable()->default(null);
            $table->unsignedInteger('status_id');
            $table->unsignedInteger('priority_id')->default('1');
            $table->unsignedInteger('user_id');
            $table->unsignedInteger('agent_id');
            $table->unsignedInteger('category_id');
            $table->timestamp('completed_at')->nullable()->default(null);

            $table->index(["agent_id"], 'ticketit_agent_id_index');

            $table->index(["category_id"], 'ticketit_category_id_index');

            $table->index(["subject"], 'ticketit_subject_index');

            $table->index(["priority_id"], 'ticketit_priority_id_index');

            $table->index(["user_id"], 'ticketit_user_id_index');

            $table->index(["status_id"], 'ticketit_status_id_index');

            $table->index(["completed_at"], 'ticketit_completed_at_index');
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
