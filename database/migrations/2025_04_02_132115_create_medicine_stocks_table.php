<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('medicine_stocks', function (Blueprint $table) {
            $table->id();
            $table->string('medicine')->nullable();
            $table->string('batch_no')->nullable();
            $table->decimal('price')->nullable();
            $table->string('potency')->nullable();
            $table->integer('quantity')->nullable();
            $table->integer('record_level')->nullable();
            $table->date('mfg_date')->nullable();
            $table->date('exp_date')->nullable();
            $table->decimal('gst')->nullable();
            $table->decimal('sgst')->nullable();
            $table->decimal('cgst')->nullable();
            $table->decimal('price_per_quantity')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('medicine_stocks');
    }
};
