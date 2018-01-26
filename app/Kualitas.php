<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kualitas extends Model
{
    public $timestamps=false;
    protected $primarykey='id';
    protected $fillable=['tahun', 'produktifitas', 'inisiatif','ketelitian','efisiensi','kerjasama','tanggung_jawab','kedisiplinan'];

    public function staff(){
    	return $this->belongsTo('App\staff','id');

    }
}
