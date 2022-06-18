<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\Pangkalan;
use App\Models\Penerimaan;
use Illuminate\Http\Request;

class PenerimaanController extends Controller
{
    public function penerimaan()
    {
        $data = Penerimaan::orderBy('id', 'DESC')->get();
        return view('superadmin.penerimaan.index', compact('data'));
    }
    public function penerimaancreate()
    {
        $check = Penerimaan::get();
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
        return view('superadmin.penerimaan.create', compact('kode', 'pangkalan'));
    }
    public function penerimaanstore(Request $req)
    {
        $attr = $req->all();
        Penerimaan::create($attr);
        toastr()->success('Berhasil disimpan');
        return redirect('/penerimaan');
    }
    public function penerimaanedit($id)
    {
        $data = Penerimaan::find($id);
        $check = Penerimaan::get();
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
        return view('superadmin.penerimaan.edit', compact('data', 'kode', 'pangkalan'));
    }
    public function penerimaanupdate(Request $req, $id)
    {
        $attr = $req->all();
        Penerimaan::find($id)->update($attr);
        toastr()->success('Berhasil disimpan');
        return redirect('/penerimaan');
    }
    public function penerimaandelete($id)
    {
        try {
            Penerimaan::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data barang');
            return back();
        }
    }
}
