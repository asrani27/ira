<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TokoController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\DriverController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\SatuanController;
use App\Http\Controllers\BerandaController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\AngkutanController;
use App\Http\Controllers\KeranjangController;
use App\Http\Controllers\PangkalanController;
use App\Http\Controllers\PenjualanController;
use App\Http\Controllers\PembayaranController;
use App\Http\Controllers\PenerimaanController;
use App\Http\Controllers\PengirimanController;

Route::get('/', [LoginController::class, 'showlogin'])->name('login');
Route::post('/login', [LoginController::class, 'login']);

Route::group(['middleware' => ['auth', 'role:superadmin']], function () {
    Route::get('/beranda', [BerandaController::class, 'index']);
    Route::get('/logout', [LogoutController::class, 'logout']);

    Route::get('/adminp', [AdminController::class, 'admin']);
    Route::get('/adminp/create', [AdminController::class, 'admincreate']);
    Route::post('/adminp/create', [AdminController::class, 'adminstore']);
    Route::get('/adminp/edit/{id}', [AdminController::class, 'adminedit']);
    Route::post('/adminp/edit/{id}', [AdminController::class, 'adminupdate']);
    Route::get('/adminp/delete/{id}', [AdminController::class, 'admindelete']);


    Route::get('/pangkalan', [PangkalanController::class, 'pangkalan']);
    Route::get('/pangkalan/create', [PangkalanController::class, 'pangkalancreate']);
    Route::post('/pangkalan/create', [PangkalanController::class, 'pangkalanstore']);
    Route::get('/pangkalan/edit/{id}', [PangkalanController::class, 'pangkalanedit']);
    Route::post('/pangkalan/edit/{id}', [PangkalanController::class, 'pangkalanupdate']);
    Route::get('/pangkalan/delete/{id}', [PangkalanController::class, 'pangkalandelete']);

    Route::get('/angkutan', [AngkutanController::class, 'angkutan']);
    Route::get('/angkutan/create', [AngkutanController::class, 'angkutancreate']);
    Route::post('/angkutan/create', [AngkutanController::class, 'angkutanstore']);
    Route::get('/angkutan/edit/{id}', [AngkutanController::class, 'angkutanedit']);
    Route::post('/angkutan/edit/{id}', [AngkutanController::class, 'angkutanupdate']);
    Route::get('/angkutan/delete/{id}', [AngkutanController::class, 'angkutandelete']);

    Route::get('/driver', [DriverController::class, 'driver']);
    Route::get('/driver/create', [DriverController::class, 'drivercreate']);
    Route::post('/driver/create', [DriverController::class, 'driverstore']);
    Route::get('/driver/edit/{id}', [DriverController::class, 'driveredit']);
    Route::post('/driver/edit/{id}', [DriverController::class, 'driverupdate']);
    Route::get('/driver/delete/{id}', [DriverController::class, 'driverdelete']);


    Route::get('/pembayaran', [PembayaranController::class, 'pembayaran']);
    Route::get('/pembayaran/create', [PembayaranController::class, 'pembayarancreate']);
    Route::post('/pembayaran/create', [PembayaranController::class, 'pembayaranstore']);
    Route::get('/pembayaran/edit/{id}', [PembayaranController::class, 'pembayaranedit']);
    Route::post('/pembayaran/edit/{id}', [PembayaranController::class, 'pembayaranupdate']);
    Route::get('/pembayaran/delete/{id}', [PembayaranController::class, 'pembayarandelete']);

    Route::get('/penerimaan', [PenerimaanController::class, 'penerimaan']);
    Route::get('/penerimaan/create', [PenerimaanController::class, 'penerimaancreate']);
    Route::post('/penerimaan/create', [PenerimaanController::class, 'penerimaanstore']);
    Route::get('/penerimaan/edit/{id}', [PenerimaanController::class, 'penerimaanedit']);
    Route::post('/penerimaan/edit/{id}', [PenerimaanController::class, 'penerimaanupdate']);
    Route::get('/penerimaan/delete/{id}', [PenerimaanController::class, 'penerimaandelete']);

    Route::get('/pengiriman', [PengirimanController::class, 'pengiriman']);
    Route::get('/pengiriman/create', [PengirimanController::class, 'pengirimancreate']);
    Route::post('/pengiriman/create', [PengirimanController::class, 'pengirimanstore']);
    Route::get('/pengiriman/edit/{id}', [PengirimanController::class, 'pengirimanedit']);
    Route::post('/pengiriman/edit/{id}', [PengirimanController::class, 'pengirimanupdate']);
    Route::get('/pengiriman/delete/{id}', [PengirimanController::class, 'pengirimandelete']);

    Route::get('/laporan', [LaporanController::class, 'index']);
    Route::get('/laporan/admin', [LaporanController::class, 'pdf_admin']);
    Route::get('/laporan/pangkalan', [LaporanController::class, 'pdf_pangkalan']);
    Route::get('/laporan/angkutan', [LaporanController::class, 'pdf_angkutan']);
    Route::get('/laporan/driver', [LaporanController::class, 'pdf_driver']);
    Route::post('/laporan/pembayaran', [LaporanController::class, 'pembayaran']);
    Route::post('/laporan/penerimaan', [LaporanController::class, 'penerimaan']);
    Route::post('/laporan/pengiriman', [LaporanController::class, 'pengiriman']);
    Route::post('/laporan', [LaporanController::class, 'pdf']);
});
