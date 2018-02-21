@extends('layouts.app')
@section('title','Imagenes de productos')

@section('body-class','product-page')

@section('content')

    <div class="header header-filter" style="background-image: url('https://images.unsplash.com/photo-1423655156442-ccc11daa4e99?crop=entropy&dpr=2&fit=crop&fm=jpg&h=750&ixjsv=2.1.0&ixlib=rb-0.3.5&q=50&w=1450');">

    </div>

  		<div class="main main-raised">
  			<div class="container">

	      <div class="section text-center">
          <h2 class="title">Imagenes de "{{ $product->name }}"</h2>


              <form class="" action="" method="post" enctype="multipart/form-data">
                {{ csrf_field()}}
                <input type="file" name="photo" value="" required >
                <button type="submit"  class="btn btn-primary btn-round">Subir nueva imagen</button>
                <a href="{{ url('/admin/products')}}" class="btn btn-default btn-round">Volver al listado de productos</a>
              </form>
              <hr>

          <div class="row">
          @foreach ($images as $image)
          <div class="col-md-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <img src="{{ $image->url }}" alt="" width="250">
                <form class="" action="" method="post">
                  {{ csrf_field() }}
                  {{ method_field('DELETE') }}
                  <input type="hidden" name="image_id" value="{{ $image->id }}">
                  <button type="submit" class="btn btn-danger" name="button">Eliminar Imagen</button>
                </form>

              </div>
            </div>
          </div>
          @endforeach
  </div>
        </div>
            <!-- ./ Productos Disponibles -->

  	        </div>

  		</div>

@include('includes.footer')



@endsection
