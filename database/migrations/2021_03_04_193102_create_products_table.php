<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->integer('cat_id')->nullable();
            $table->integer('brand_id')->nullable();
            $table->string('title',100)->nullable();
            $table->string('slug',100)->nullable();
            $table->integer('sku')->nullable();
            $table->text('short_description')->nullable();
            $table->longText('long_description')->nullable();
            $table->double('old_price')->nullable();
            $table->double('new_price')->nullable();
            $table->string('imagepath')->nullable();
            $table->string('image')->nullable();
            $table->boolean('active')->default(1);
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
        Schema::dropIfExists('products');
    }
}
