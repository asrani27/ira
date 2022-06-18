<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\Driver;
use App\Models\Angkutan;
use App\Models\Pangkalan;
use App\Models\Penjualan;
use App\Models\Pembayaran;
use App\Models\Penerimaan;
use App\Models\Pengiriman;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;

class LaporanController extends Controller
{
    public function index()
    {
        return view('superadmin.laporan.index');
    }

    public function pdf_admin()
    {
        $data = Admin::get();
        // $path = 'theme/logo.png';
        // $datalogo = file_get_contents($path);
        // $type = pathinfo($path, PATHINFO_EXTENSION);
        // $logo = 'data:image/' . $type . ';base64,' . base64_encode($datalogo);

        $pdf = PDF::loadView('superadmin.laporan.pdf_admin', compact('data'))->setPaper('legal');
        return $pdf->stream();
    }

    public function pdf_angkutan()
    {
        $data = Angkutan::get();
        // $path = 'theme/logo.png';
        // $datalogo = file_get_contents($path);
        // $type = pathinfo($path, PATHINFO_EXTENSION);
        // $logo = 'data:image/' . $type . ';base64,' . base64_encode($datalogo);

        $pdf = PDF::loadView('superadmin.laporan.pdf_angkutan', compact('data'))->setPaper('legal');
        return $pdf->stream();
    }

    public function pdf_pangkalan()
    {
        $data = Pangkalan::get();
        // $path = 'theme/logo.png';
        // $datalogo = file_get_contents($path);
        // $type = pathinfo($path, PATHINFO_EXTENSION);
        // $logo = 'data:image/' . $type . ';base64,' . base64_encode($datalogo);

        $pdf = PDF::loadView('superadmin.laporan.pdf_pangkalan', compact('data'))->setPaper('legal');
        return $pdf->stream();
    }

    public function pdf_driver()
    {
        $data = Driver::get();
        // $path = 'theme/logo.png';
        // $datalogo = file_get_contents($path);
        // $type = pathinfo($path, PATHINFO_EXTENSION);
        // $logo = 'data:image/' . $type . ';base64,' . base64_encode($datalogo);

        $pdf = PDF::loadView('superadmin.laporan.pdf_driver', compact('data'))->setPaper('legal');
        return $pdf->stream();
    }
    public function pembayaran(Request $req)
    {
        $bulan = $req->bulan;
        $tahun = $req->tahun;
        $data = Pembayaran::whereMonth('tgl', $bulan)->whereYear('tgl', $tahun)->get();
        $pdf = PDF::loadView('superadmin.laporan.pdf_pembayaran', compact('bulan', 'tahun', 'data'))->setPaper('legal');
        return $pdf->stream();
    }

    public function penerimaan(Request $req)
    {
        $bulan = $req->bulan;
        $tahun = $req->tahun;
        $data = Penerimaan::whereMonth('tgl', $bulan)->whereYear('tgl', $tahun)->get();
        $pdf = PDF::loadView('superadmin.laporan.pdf_penerimaan', compact('bulan', 'tahun', 'data'))->setPaper('legal');
        return $pdf->stream();
    }

    public function pengiriman(Request $req)
    {
        $bulan = $req->bulan;
        $tahun = $req->tahun;
        $data = Pengiriman::whereMonth('tgl', $bulan)->whereYear('tgl', $tahun)->get();
        $pdf = PDF::loadView('superadmin.laporan.pdf_pengiriman', compact('bulan', 'tahun', 'data'))->setPaper('legal');
        return $pdf->stream();
    }
}
