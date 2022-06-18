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
        <form method="post" action="/pengiriman/edit/{{$data->id}}">
            @csrf
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title">Data pengiriman</h3>
                            <div class="card-tools">
                                <a href="/pengiriman" type="button" class="btn bg-gradient-blue btn-sm">
                                    <i class="fa fa-arrow-left"></i> Kembali</a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Tanggal pengiriman</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" name="tgl" value="{{$data->tgl}}" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Kode pengiriman</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="nota" value="{{$data->nota}}"
                                        readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Pangkalan</label>
                                <div class="col-sm-10">
                                    <select name="pangkalan_id" class="form-control" required>
                                        @foreach ($pangkalan as $item)
                                        <option value="{{$item->id}}" {{$data->pangkalan_id == $item->id ?
                                            'selected':''}}>{{$item->nama}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Nopol</label>
                                <div class="col-sm-10">
                                    <select name="angkutan_id" class="form-control" required>
                                        @foreach ($angkutan as $item)
                                        <option value="{{$item->id}}" {{$data->angkutan_id == $item->id ?
                                            'selected':''}}>{{$item->nopol}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Driver</label>
                                <div class="col-sm-10">
                                    <select name="driver_id" class="form-control" required>
                                        @foreach ($driver as $item)
                                        <option value="{{$item->id}}" {{$data->driver_id == $item->id ?
                                            'selected':''}}>{{$item->nama}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Jenis Tabung</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="jenis_tabung"
                                        value="{{$data->jenis_tabung}}" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Jumlah Kirim</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="jumlah_kirim"
                                        value="{{$data->jumlah_kirim}}" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Total Ditagih</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="total_ditagih"
                                        value="{{$data->total_ditagih}}" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Penerima</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="penerima" value="{{$data->penerima}}"
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