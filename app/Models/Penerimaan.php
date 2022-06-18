<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Penerimaan extends Model
{
    use HasFactory;
    protected $table = 'penerimaan';
    protected $guarded = ['id'];

    public function pangkalan()
    {
        return $this->belongsTo(Pangkalan::class, 'pangkalan_id');
    }
}
