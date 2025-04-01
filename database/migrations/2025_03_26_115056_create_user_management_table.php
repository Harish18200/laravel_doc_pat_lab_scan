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
        Schema::create('user_management', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('user_name')->nullable(); 
            $table->string('password'); 
            $table->integer('department_id')->nullable(); 
            $table->integer('gender_id')->nullable(); 
            $table->integer('marital_status_id')->nullable();
            $table->text('address')->nullable();
            $table->string('contact_no')->nullable();
            $table->string('alternative_no')->nullable();
            $table->string('email')->unique();
            $table->date('date_of_join')->nullable();
            $table->date('dob')->nullable();
            $table->text('remarks')->nullable();
            $table->string('profile_pic')->nullable();
            $table->integer('branch_id')->nullable();
            $table->integer('scan_user_status')->default(0);
            $table->timestamps();
        });
        
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('user_management');
    }
};
