<?php

namespace App\Http\Controllers;

use App\Models\Pangkalan;
use Illuminate\Http\Request;

class PangkalanController extends Controller
{
    public function pangkalan()
    {
        $data = Pangkalan::orderBy('id', 'DESC')->get();
        return view('superadmin.pangkalan.index', compact('data'));
    }
    public function pangkalancreate()
    {
        return view('superadmin.pangkalan.create');
    }
    public function pangkalanstore(Request $req)
    {
        $attr = $req->all();

        $check = Pangkalan::where('nama', $req->nama)->first();
        if ($check == null) {
            Pangkalan::create($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/pangkalan');
        } else {
            toastr()->error('Sudah Ada');
            return back();
        }
    }
    public function pangkalanedit($id)
    {
        $data = Pangkalan::find($id);
        return view('superadmin.pangkalan.edit', compact('data'));
    }
    public function pangkalanupdate(Request $req, $id)
    {
        $attr = $req->all();
        $check = Pangkalan::where('nama', $req->nama)->first();
        if ($check == null) {
            //simpan
            Pangkalan::find($id)->update($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/pangkalan');
        } else {
            if ($id == $check->id) {
                Pangkalan::find($id)->update($attr);
                toastr()->success('Berhasil diupdate');
                return redirect('/pangkalan');
            } else {
                toastr()->error('Sudah ada');
                return back();
            }
        }
    }
    public function pangkalandelete($id)
    {
        try {
            Pangkalan::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data barang');
            return back();
        }
    }
}
