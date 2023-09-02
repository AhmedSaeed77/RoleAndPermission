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
        Schema::create('covers', function (Blueprint $table) {
            $table->id();
            $table->string('contact_image');
            $table->string('about_image');
            $table->string('event_image');
            $table->string('singleevent_image');
            $table->string('blog_image');
            $table->string('transfer_image');
            $table->string('liveaboard_image');
            $table->string('exploredestination_image');
            $table->string('package_image');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('covers');
    }
};
