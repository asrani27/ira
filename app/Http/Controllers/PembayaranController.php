<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\Pembayaran;
use Illuminate\Http\Request;

class PembayaranController extends Controller
{
    public function pembayaran()
    {
        $data = Pembayaran::orderBy('id', 'DESC')->get();
        return view('superadmin.pembayaran.index', compact('data'));
    }
    public function pembayarancreate()
    {
        $check = Pembayaran::get();
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
        $admin = Admin::get();
        return view('superadmin.pembayaran.create', compact('kode', 'admin'));
    }
    public function pembayaranstore(Request $req)
    {
        $attr = $req->all();
        Pembayaran::create($attr);
        toastr()->success('Berhasil disimpan');
        return redirect('/pembayaran');
    }
    public function pembayaranedit($id)
    {
        $data = Pembayaran::find($id);
        $check = Pembayaran::get();
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
        $admin = Admin::get();
        return view('superadmin.pembayaran.edit', compact('data', 'kode', 'admin'));
    }
    public function pembayaranupdate(Request $req, $id)
    {
        $attr = $req->all();
        Pembayaran::find($id)->update($attr);
        toastr()->success('Berhasil disimpan');
        return redirect('/pembayaran');
    }
    public function pembayarandelete($id)
    {
        try {
            pembayaran::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data barang');
            return back();
        }
    }
}
