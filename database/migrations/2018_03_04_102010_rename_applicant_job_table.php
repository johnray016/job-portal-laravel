<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RenameApplicantJobTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
         public function up()
    {
        Schema::rename('job_user', 'applicant_job');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
