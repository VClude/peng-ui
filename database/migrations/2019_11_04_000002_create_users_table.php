<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'users';

    /**
     * Run the migrations.
     * @table users
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->bigIncrements('id');
            $table->string('name', 191);
            $table->string('orgcode', 191)->nullable()->default(null);
            $table->string('faculty', 191)->nullable()->default(null);
            $table->string('studyprog', 191)->nullable()->default(null);
            $table->string('eduprog', 191)->nullable()->default(null);
            $table->string('email', 191);
            $table->timestamp('email_verified_at')->nullable()->default(null);
            $table->enum('identitas', ['Mahasiswa', 'Staff', 'Dosen', 'Lain-Lain'])->default('Mahasiswa');
            $table->string('noidentitas', 191)->nullable()->default(null);
            $table->string('imgurl', 191)->nullable()->default(null);
            $table->string('password', 191);
            $table->rememberToken();
            $table->tinyInteger('ticketit_admin')->default('0');
            $table->tinyInteger('ticketit_agent')->default('0');
            $table->string('firebasetoken');

            $table->unique(["email"], 'users_email_unique');
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
