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
        Schema::create('expenses', function (Blueprint $table) {
            $table->id();
            $table->date('date')->nullable();
            $table->integer('ebbill')->nullable();
            $table->integer('physio_expenses')->nullable();
            $table->integer('salary')->nullable();
            $table->integer('tv')->nullable();
            $table->integer('tea')->nullable();
            $table->integer('phone_bill')->nullable();
            $table->integer('food')->nullable();
            $table->integer('amazon')->nullable();
            $table->integer('out_side_lab')->nullable();
            $table->integer('medicine_company')->nullable();
            $table->integer('laundry')->nullable();
            $table->integer('car')->nullable();
            $table->integer('biscuit')->nullable();
            $table->integer('cool_drinks')->nullable();
            $table->integer('service')->nullable();
            $table->integer('work')->nullable();
            $table->integer('milk')->nullable();
            $table->integer('flower')->nullable();
            $table->decimal('manju')->nullable();
            $table->decimal('courier')->nullable();
            $table->decimal('desil')->nullable();
            $table->decimal('bio_waste')->nullable();
            $table->decimal('autitor')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('expenses');
    }
};
