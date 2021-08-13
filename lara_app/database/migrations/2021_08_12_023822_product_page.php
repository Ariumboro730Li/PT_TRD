<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ProductPage extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_page', function (Blueprint $table) {
            $table->id();
            $table->bigint("user_id");
            $table->bigint("product_id");
            $table->string("product");
            $table->string("shipping");
            $table->integer("price");
            $table->integer("fee");
            $table->string("phone");
            $table->string("status_pay");
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
        Schema::dropIfExists('product_page');
    }
}
