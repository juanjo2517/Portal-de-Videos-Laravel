@extends('layouts.app')
<link rel="icon" href="{{asset('image/flash.jpg') }}" type="image/x-icon">

@section('content')
<div class="container">
    <div class="row">

        <div class="container">
            <div class="col-md-4">

                <h2>Has buscado: {{$search}}</h2>
                <br>
            </div>
            <div class="col-md-8">

                <form class="col-md-4 pull-right" action="{{url('/buscar/'.$search)}}" method="get">
                    <label for="filter">Ordenar</label>
                    <select name="filter" class="form-control">
                        <option value="new">Más nuevos</option>
                        <option value="old">Más antigüos</option>
                        <option value="alfa">De la A a las Z</option>
                    </select>
                    <br>
                    <input type="submit" value="Ordenar" class=" btn-filter btn btn-sm btn-primary">
                </form>
            </div>

            <div class="clearfix"></div>

            @include('video.videosList')
        </div>

    </div>
</div>
@endsection