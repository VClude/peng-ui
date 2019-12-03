<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTicketitSettingsTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'ticketit_settings';

    /**
     * Run the migrations.
     * @table ticketit_settings
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('lang', 191)->nullable()->default(null);
            $table->string('slug', 191);
            $table->mediumText('value');
            $table->mediumText('default');

            $table->index(["lang"], 'ticketit_settings_lang_index');

            $table->index(["slug"], 'ticketit_settings_slug_index');

            $table->unique(["lang"], 'ticketit_settings_lang_unique');

            $table->unique(["slug"], 'ticketit_settings_slug_unique');
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
