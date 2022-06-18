<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function admin()
    {
        $data = Admin::orderBy('id', 'DESC')->get();
        return view('superadmin.admin.index', compact('data'));
    }
    public function admincreate()
    {
        return view('superadmin.admin.create');
    }
    public function adminstore(Request $req)
    {
        $attr = $req->all();

        $check = Admin::where('nik', $req->nik)->first();
        if ($check == null) {
            Admin::create($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/adminp');
        } else {
            toastr()->error('Sudah Ada');
            return back();
        }
    }
    public function adminedit($id)
    {
        $data = Admin::find($id);
        return view('superadmin.admin.edit', compact('data'));
    }
    public function adminupdate(Request $req, $id)
    {
        $attr = $req->all();
        $check = Admin::where('nik', $req->nik)->first();
        if ($check == null) {
            //simpan
            Admin::find($id)->update($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/adminp');
        } else {
            if ($id == $check->id) {
                Admin::find($id)->update($attr);
                toastr()->success('Berhasil diupdate');
                return redirect('/adminp');
            } else {
                toastr()->error('Sudah ada');
                return back();
            }
        }
    }
    public function admindelete($id)
    {
        try {
            Admin::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data barang');
            return back();
        }
    }
}
