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
        Schema::create('physical_examinations', function (Blueprint $table) {
            $table->id();
            $table->string('patient_id')->nullable(); 
            $table->string('weight')->nullable(); // Weight in kg
            $table->string('temperature')->nullable(); // Temperature in °C
            $table->string('pulse')->nullable(); // Pulse rate
            $table->string('bp_left')->nullable(); // BP Left Arm
            $table->string('bp_right')->nullable(); // BP Right Arm
            $table->string('respiratory_rate')->nullable(); // Respiratory Rate
            $table->string('spo2')->nullable(); // SpO₂ level in %
            $table->string('pain_scale')->nullable(); // Pain Scale 0-10
            $table->string('grbs')->nullable(); // Glucose Random Blood Sugar
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('physical_examinations');
    }
};
