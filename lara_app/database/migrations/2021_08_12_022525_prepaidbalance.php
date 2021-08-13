<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Prepaidbalance extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prepaid_balance', function (Blueprint $table) {
            $table->id();
            $table->integer("user_id");
            $table->integer("product_id");
            $table->string("phone");
            $table->integer("value");
            $table->integer("status_pay");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('prepaid_balance');
    }
}
