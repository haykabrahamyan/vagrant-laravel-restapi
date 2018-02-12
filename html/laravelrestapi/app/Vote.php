<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vote extends Model
{
    protected $table = 'vote';

    public $timestamps = false;

    protected $fillable = [
        'id','user_id','g_id'
    ];

    public function getGenre(){
        return $this->hasOne('\App\Genre','id','g_id');
    }
}
