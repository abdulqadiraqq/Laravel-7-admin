<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCmsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cms', function (Blueprint $table) {
            $table->id();
            $table->string('pagename')->nullable();
            $table->string('pagetitle')->nullable();
            $table->longText('content')->nullable();
            $table->longText('content2')->nullable();
            $table->string('image1')->nullable();
            $table->string('image2')->nullable();
            $table->string('imagepath')->nullable();
            $table->string('videourl')->nullable();
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
        Schema::dropIfExists('cms');
    }
}
