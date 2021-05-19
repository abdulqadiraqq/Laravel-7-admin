<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('lastname')->nullable();
            $table->string('email')->unique();
            $table->string('country')->nullable();
            $table->string('city')->nullable();
            $table->string('address', 80)->nullable();
            $table->string('phone')->nullable();
            $table->string('image', 255)->nullable();
            $table->string('state', 80)->nullable();
            $table->string('zipcode', 80)->nullable();
            $table->string('country_code', 80)->nullable();
            $table->string('username', 255)->nullable();
            $table->string('company_name', 255)->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password', 80);
            $table->boolean('active')->default(1);
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
