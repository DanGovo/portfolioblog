<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBlacklistedClientsTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blacklisted_clients', function (Blueprint $table) {
            $table->increments('id');
            $table->string('firstname');
            $table->string('lastname');
            $table->string('institution');
            $table->integer('account_type_id')->unsigned();
            $table->integer('manager_id')->unsigned();
            $table->date('date_blacklisted');
            $table->timestamps();
            $table->softDeletes();
            $table->foreign('account_type_id')->references('id')->on('account_types')->onDelete('Cascade')->onUpdate('Cascade');
            $table->foreign('manager_id')->references('id')->on('account_managers')->onDelete('Cascade')->onUpdate('Cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('blacklisted_clients');
    }
}
