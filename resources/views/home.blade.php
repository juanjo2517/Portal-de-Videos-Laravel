@extends('layouts.app')
<link rel="icon" href="{{asset('image/flash.jpg') }}" type="image/x-icon">

@section('content')
<div class="container">
    <div class="row">

        <div class="container">

            @if(session('message'))

            <div class="alert alert-success">

                {{session('message')}}
            </div>
            @endif

            @include('video.videosList')



        </div>
        


    </div>
</div>
@endsection