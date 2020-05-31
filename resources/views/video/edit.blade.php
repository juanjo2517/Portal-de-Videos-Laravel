@extends ('layouts.app')

@section('content')
<div class="container">
    <div class="row">

        <h2>Editar {{$video->title}}</h2>
        <hr>
        <form action="{{route('updateVideo', ['video_id'=>$video->id])}}" method="post" enctype="multipart/form-data" class="col-lg-7">

            {!! csrf_field()!!}

            @if($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach($errors->all() as $error)
                    <li>{{$error}}</li>
                    @endforeach
                </ul>


            </div>
            @endif



            <div class="form-group">
                <label for="title">Titulo</label>
                <input type="text" class="form-control" name="title" id="title" value="{{$video->title}}" />

            </div>

            <div class="form-group">
                <label for="description">Descripción</label>
                <textarea class="form-control" name="description" id="description">{{$video->description}}</textarea>

            </div>
            <div class="form-group">
                <label for="image">Miniatura</label>
                <br>
                @if(Storage::disk('images')->has($video->image))
                <div class="video-image-thumb ">
                    <div class="video-image-mask">
                        <img  src="{{url('/miniatura/'. $video->image)}}" class="video-image" alt="" />
                    </div>
                </div>
                @endif
                <input type="file" class="form-control" name="image" id="image" />

            </div>
            <div class="form-group">

                <label for="video">Archivo de Video</label>
                <br>

                <video width="600" height="320" controls id="video-player">
                    <source src="{{route('fileVideo', ['filename' => $video->video_path]) }}">
                    </source>

                </video>


                <input type="file" class="form-control" name="video" id="video" />

            </div>
            <button type="submit" class="btn btn-success">Editar Video</button>

        </form>
    </div>

</div>


@endsection