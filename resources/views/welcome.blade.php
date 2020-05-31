@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Bienvenido</div>

                <div class="panel-body">
                    VIDEO FLASH
                    <br><br>
                    <p>Plataforma para ver y subir videos. <a href="{{url('/register')}}">¡Registrate Ahora!</a>  </p> 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
