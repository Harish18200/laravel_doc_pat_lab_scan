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
        Schema::create('scan_invoices', function (Blueprint $table) {
            $table->id();
            $table->string('invoice_number')->unique();
            $table->date('invoice_date');
            $table->decimal('amount', 10, 2);
            $table->string('customer_name');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('scan_invoices');
    }
};
