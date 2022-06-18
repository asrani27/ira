@extends('layouts.app')

@push('css')
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
@endpush
@section('title')

@endsection
@section('content')
<br />
<div class="row">
    <div class="col-12">
        <form method="post" action="/pembayaran/edit/{{$data->id}}">
            @csrf
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title">Data pembayaran</h3>
                            <div class="card-tools">
                                <a href="/pembayaran" type="button" class="btn bg-gradient-blue btn-sm">
                                    <i class="fa fa-arrow-left"></i> Kembali</a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Tanggal pembayaran</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" name="tgl" value="{{$data->tgl}}" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Kode pembayaran</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="nota" value="{{$data->nota}}"
                                        readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">NIK/Nama Admin</label>
                                <div class="col-sm-10">
                                    <select name="admin_id" class="form-control" required>
                                        @foreach ($admin as $item)
                                        <option value="{{$item->id}}" {{$data->admin_id == $item->id ?
                                            'selected':''}}>{{$item->nik}}/{{$item->nama}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">No Rekening</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="no_rek" value="{{$data->no_rek}}"
                                        required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Total Bayar</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="total" value="{{$data->total}}"
                                        required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"></label>
                                <div class="col-sm-10">
                                    <button type="submit"
                                        class="btn btn-block btn-primary"><strong>UPDATE</strong></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

@endsection

@push('js')

@endpush