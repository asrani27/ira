<?php

namespace App\Http\Controllers;

use App\Models\Driver;
use Illuminate\Http\Request;

class DriverController extends Controller
{
    public function driver()
    {
        $data = Driver::orderBy('id', 'DESC')->get();
        return view('superadmin.driver.index', compact('data'));
    }
    public function drivercreate()
    {
        return view('superadmin.driver.create');
    }
    public function driverstore(Request $req)
    {
        $attr = $req->all();

        $check = Driver::where('nama', $req->nama)->first();
        if ($check == null) {
            Driver::create($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/driver');
        } else {
            toastr()->error('Sudah Ada');
            return back();
        }
    }
    public function driveredit($id)
    {
        $data = Driver::find($id);
        return view('superadmin.driver.edit', compact('data'));
    }
    public function driverupdate(Request $req, $id)
    {
        $attr = $req->all();
        $check = Driver::where('nama', $req->nama)->first();
        if ($check == null) {
            //simpan
            Driver::find($id)->update($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/driver');
        } else {
            if ($id == $check->id) {
                Driver::find($id)->update($attr);
                toastr()->success('Berhasil diupdate');
                return redirect('/driver');
            } else {
                toastr()->error('Sudah ada');
                return back();
            }
        }
    }
    public function driverdelete($id)
    {
        try {
            Driver::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data barang');
            return back();
        }
    }
}
