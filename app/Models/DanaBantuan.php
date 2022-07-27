<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DanaBantuan extends Model
{
    use HasFactory;
    protected $table = 'dana_bantuans';
    protected $fillable = ['nik', 'kk', 'nama', 'alamat', 'jumlah_bantuan', 'status', 'diterima'];
}

?>