<?php

namespace App\Http\Controllers;

use App\Models\Driver;
use App\Models\Angkutan;
use App\Models\Pangkalan;
use App\Models\Pengiriman;
use Illuminate\Http\Request;

class PengirimanController extends Controller
{
    public function pengiriman()
    {
        $data = Pengiriman::orderBy('id', 'DESC')->get();
        return view('superadmin.pengiriman.index', compact('data'));
    }
    public function pengirimancreate()
    {
        $check = Pengiriman::get();
        if (count($check) == 0) {
            $kode = '0000001';
        } else {
            $number = $check->last()->id + 1;
            if (strlen($number) == 1) {
                $kode = '000000' . $number;
            } elseif (strlen($number) == 2) {
                $kode = '00000' . $number;
            } elseif (strlen($number) == 3) {
                $kode = '0000' . $number;
            } elseif (strlen($number) == 4) {
                $kode = $number;
            }
        }
        $pangkalan = Pangkalan::get();
        $angkutan = Angkutan::get();
        $driver = Driver::get();
        return view('superadmin.pengiriman.create', compact('kode', 'pangkalan', 'angkutan', 'driver'));
    }
    public function pengirimanstore(Request $req)
    {
        $attr = $req->all();

        Pengiriman::create($attr);
        toastr()->success('Berhasil disimpan');
        return redirect('/pengiriman');
    }
    public function pengirimanedit($id)
    {
        $data = Pengiriman::find($id);
        $check = Pengiriman::get();
        if (count($check) == 0) {
            $kode = '0000001';
        } else {
            $number = $check->last()->id + 1;
            if (strlen($number) == 1) {
                $kode = '000000' . $number;
            } elseif (strlen($number) == 2) {
                $kode = '00000' . $number;
            } elseif (strlen($number) == 3) {
                $kode = '0000' . $number;
            } elseif (strlen($number) == 4) {
                $kode = $number;
            }
        }
        $pangkalan = Pangkalan::get();
        $angkutan = Angkutan::get();
        $driver = Driver::get();
        return view('superadmin.pengiriman.edit', compact('data', 'kode', 'pangkalan', 'angkutan', 'driver'));
    }
    public function pengirimanupdate(Request $req, $id)
    {
        $attr = $req->all();
        Pengiriman::find($id)->update($attr);
        toastr()->success('Berhasil disimpan');
        return redirect('/pengiriman');
    }
    public function pengirimandelete($id)
    {
        try {
            Pengiriman::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data barang');
            return back();
        }
    }
}
