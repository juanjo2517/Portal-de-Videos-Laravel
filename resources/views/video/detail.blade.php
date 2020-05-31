@extends ('layouts.app')

@section('content')
<div class="col-md-11 col-md-offset-1">
    <h2>{{$video->title}}</h2>
    <hr>

    <div class="col-md-8">
        <!--video-->
        <video width="660" height="380" controls id="video-player" >
            <source src="{{route('fileVideo', ['filename' => $video->video_path]) }}"></source>
            Tu navegador no es compatible con HTML
        </video>
        <!--descripcion-->

        <div class="panel panel-default video-data">
            <div class="panel-heading">
                <div class="panel-titel">
                    Subido por <strong><a href="{{route('channel', ['user_id' => $video->user->id]) }}">  {{$video->user->name.' '.$video->user->surname}}</a></strong> || {{\FormatTime::LongTimeFilter($video->created_at)}}
                </div>

            </div>
            <div class="panel-body">
                {{$video->description}}
            </div>
        </div>
        <!--comentarios-->

        @include('video.comments')
    </div>
</div>
@endsection