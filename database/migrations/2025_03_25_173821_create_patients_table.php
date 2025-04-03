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
        Schema::create('patients', function (Blueprint $table) {
            $table->id();
            $table->string('patient_name')->nullable();
            $table->string('email')->nullable();
            $table->string('mobile')->nullable();
            $table->string('alternate_no')->nullable();
            $table->string('caregiver_name')->nullable();
            $table->string('relationship')->nullable();
            $table->string('remarks')->nullable();
            $table->string('refferred_by')->nullable();
            $table->string('martial_status')->nullable();
            $table->string('gender');
            $table->string('address')->nullable();
            $table->string('dob')->nullable();
            $table->string('password')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('patients');
    }
};
