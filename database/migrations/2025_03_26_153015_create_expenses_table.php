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
            $table->date('date');
            $table->decimal('ebbill', 10, 2)->nullable();
            $table->decimal('physio_expenses', 10, 2)->nullable();
            $table->decimal('salary', 10, 2)->nullable();
            $table->decimal('tv', 10, 2)->nullable();
            $table->decimal('tea', 10, 2)->nullable();
            $table->decimal('phone_bill', 10, 2)->nullable();
            $table->decimal('food', 10, 2)->nullable();
            $table->decimal('biscuit', 10, 2)->nullable();
            $table->decimal('cooldrinks', 10, 2)->nullable();
            $table->decimal('service', 10, 2)->nullable();
            $table->decimal('work', 10, 2)->nullable();
            $table->decimal('milk', 10, 2)->nullable();
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
