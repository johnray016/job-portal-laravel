<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnsToJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::table('jobs', function (Blueprint $table) {
            $table->string('title');
            $table->text('body');
            $table->decimal('budget');
            $table->integer('category_id');
            $table->string('position_type');    
            $table->string('project_duration');
            $table->integer('user_id');
         });   
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('jobs', function (Blueprint $table) {
            $table->dropColumn('title');
            $table->dropColumn('body');
            $table->dropColumn('budget');
            $table->dropColumn('category_id');
            $table->dropColumn('position_type');    
            $table->dropColumn('project_duration');
            $table->dropColumn('user_id');
         });   
    }
}
