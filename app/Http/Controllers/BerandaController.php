<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Barang;
use App\Models\Penjualan;
use Illuminate\Http\Request;

class BerandaController extends Controller
{
    public function index()
    {
        return view('superadmin.beranda');
    }
}
