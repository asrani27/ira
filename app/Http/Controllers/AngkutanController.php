<?php

namespace App\Http\Controllers;

use App\Models\Angkutan;
use Illuminate\Http\Request;

class AngkutanController extends Controller
{
    public function angkutan()
    {
        $data = Angkutan::orderBy('id', 'DESC')->get();
        return view('superadmin.angkutan.index', compact('data'));
    }
    public function angkutancreate()
    {
        return view('superadmin.angkutan.create');
    }
    public function angkutanstore(Request $req)
    {
        $attr = $req->all();

        $check = Angkutan::where('nopol', $req->nopol)->first();
        if ($check == null) {
            Angkutan::create($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/angkutan');
        } else {
            toastr()->error('Sudah Ada');
            return back();
        }
    }
    public function angkutanedit($id)
    {
        $data = Angkutan::find($id);
        return view('superadmin.angkutan.edit', compact('data'));
    }
    public function angkutanupdate(Request $req, $id)
    {
        $attr = $req->all();
        $check = Angkutan::where('nopol', $req->nopol)->first();
        if ($check == null) {
            //simpan
            Angkutan::find($id)->update($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/angkutan');
        } else {
            if ($id == $check->id) {
                Angkutan::find($id)->update($attr);
                toastr()->success('Berhasil diupdate');
                return redirect('/angkutan');
            } else {
                toastr()->error('Sudah ada');
                return back();
            }
        }
    }
    public function angkutandelete($id)
    {
        try {
            Angkutan::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data barang');
            return back();
        }
    }
}
