<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataKematian extends Model
{
    
    use HasFactory;
    protected $table ='data_kematian';
    protected $fillable = ['nik', 'nama', 'nikWaris', 'namaWaris', 'kematian', 'status', 'diterima'];
}

?>