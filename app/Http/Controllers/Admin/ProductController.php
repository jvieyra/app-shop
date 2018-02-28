<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller
{
    //
    public function index(){
      $products = Product::paginate(10);
      return view('admin.products.index')
                  ->with(compact('products'));//listado de productos
    }

    public function create(){
      return view('admin.products.create');// formualrio de registro
    }

    public function store(Request $request){

      //validar los datos
      $messages = [
        'name.required' => 'Es necesario ingresar un nombre para el producto.',
        'name.min' => 'El nombre del producto debe tener al menos 3 caracteres.',
        'description.required'=>'La descripcion corta es un campo obligatorio.',
        'description.max'=>'La descripcion corta solo admite hasta 200 caracteres.',
        'price.required'=>'Es obligatorio definir un precio para el producto.',
        'price.numeric'=>'Ingrese un precio valido.',
        'price.min'=>'No se admiten valores negativos.'
      ];
      $rules = [
        'name'=> 'required|min:3',
        'description' => 'required|max:200',
        'price' => 'required|numeric|min:0'

      ];
      $this->validate($request, $rules,$messages);

      //registrar el nuevo producto
      //dd($request->all());
      $product = new Product();
      $product->name = $request->input('name');
      $product->description = $request->input('description');
      $product->price = $request->input('price');
      $product->long_description = $request->input('long_description');
      $product->save();//INSERT

      return redirect('/admin/products');
    }


    public function edit($id){
      //return "Mostrar aqui con : $id ";
      $product = Product::find($id);
      return view('admin.products.edit')
                  ->with(compact('product'));
    }

    public function update(Request $request, $id){
      //validar los datos
      $messages = [
        'name.required' => 'Es necesario ingresar un nombre para el producto.',
        'name.min' => 'El nombre del producto debe tener al menos 3 caracteres.',
        'description.required'=>'La descripcion corta es un campo obligatorio.',
        'description.max'=>'La descripcion corta solo admite hasta 200 caracteres.',
        'price.required'=>'Es obligatorio definir un precio para el producto.',
        'price.numeric'=>'Ingrese un precio valido.',
        'price.min'=>'No se admiten valores negativos.'
      ];
      $rules = [
        'name'=> 'required|min:3',
        'description' => 'required|max:200',
        'price' => 'required|numeric|min:0'

      ];
      $this->validate($request, $rules,$messages);




      //registrar el nuevo producto
      //dd($request->all());
      $product =  Product::find($id);
      $product->name = $request->input('name');
      $product->description = $request->input('description');
      $product->price = $request->input('price');
      $product->long_description = $request->input('long_description');
      $product->save();//UPDATE

      return redirect('/admin/products');
    }

    public function destroy($id){
      $product =  Product::find($id);
      $product->delete();//DELETE
      return back();
    }







}
