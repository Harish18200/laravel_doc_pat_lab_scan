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
        Schema::create('admissions', function (Blueprint $table) {
            $table->id(); // Auto-increment ID
            $table->integer('patient_id')->nullable(); 
            $table->string('primary_consultant')->nullable(); // Primary Consultant
            $table->dateTime('admission_date')->nullable(); // Admission Date & Time
            $table->dateTime('discharge_date')->nullable(); // Discharge Date & Time (Nullable)
            $table->string('ip_op')->nullable(); // IP / OP
            $table->string('informant')->nullable(); // Informant
            $table->string('arrival_mode')->nullable(); // Mode of Arrival
            $table->text('allergies')->nullable(); // Allergies
            $table->string('immunization_utd')->nullable(); // Immunization UTD
            $table->timestamps(); // created_at & updated_at
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('admissions');
    }
};
