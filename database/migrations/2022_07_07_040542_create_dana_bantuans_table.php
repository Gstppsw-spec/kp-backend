<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDanaBantuansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dana_bantuans', function (Blueprint $table) {
            $table->bigIncrements('id');            
            $table->char('nik', 16);
            $table->char('kk', 16);
            $table->string('nama');
            $table->string('alamat');
            $table->decimal('jumlah_bantuan', $precision = 15, $scale = 2);
            $table->string('status');
            $table->date('diterima');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dana_bantuans');
    }
}
