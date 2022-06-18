<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengiriman extends Model
{
    use HasFactory;
    protected $table = 'pengiriman';
    protected $guarded = ['id'];

    public function pangkalan()
    {
        return $this->belongsTo(Pangkalan::class, 'pangkalan_id');
    }

    public function angkutan()
    {
        return $this->belongsTo(Angkutan::class, 'angkutan_id');
    }

    public function driver()
    {
        return $this->belongsTo(Driver::class, 'driver_id');
    }
}
