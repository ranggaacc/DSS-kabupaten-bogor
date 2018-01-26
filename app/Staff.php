<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    public $timestamps=false;
    protected $primarykey='id';
    protected $fillable=['nama', 'alamat', 'email','telp','divisi','jabatan','gaji'];
    public function Kualitas(){
    	return $this->hasMany('App\Kualitas');
    }
    
}
