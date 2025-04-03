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
        Schema::create('lab_applications', function (Blueprint $table) {
            $table->id();
            $table->string('lab_details')->nullable();
            $table->string('normal_range')->nullable();
            $table->string('unit')->nullable();
            $table->string('price')->nullable();
            $table->string('Child')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('lab_applications');
    }
};
