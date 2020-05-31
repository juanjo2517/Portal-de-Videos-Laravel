@extends ('layouts.app')
@section ('content')
<div class="container">

    <div class="row">
        <h2>Subir nuevo Video</h2>
        <hr>
        <form action="{{route('saveVideo')}}" method="post" enctype="multipart/form-data" class="col-lg-7">

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
                <input type="text" class="form-control" name="title" id="title" value="{{old('title')}}"/>

            </div>

            <div class="form-group">
                <label for="description">Descripción</label>
                <textarea class="form-control" name="description" id="description">{{old('description')}}</textarea>

            </div>
            <div class="form-group">
                <label for="image">Miniatura</label>
                <input type="file" class="form-control" name="image" id="image" />

            </div>
            <div class="form-group">
                <label for="video">Video</label>
                <input type="file" class="form-control" name="video" id="video" />

            </div>
            <button type="submit" class="btn btn-success">Subir Video</button>

        </form>
    </div>
</div>
@endsection