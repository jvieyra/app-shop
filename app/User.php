<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Cart;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];


    //
    public function carts(){
        //obtiene los carritos de cada usuario
        return $this->hasMany(Cart::class);
    }

    //accessor cart_id
    public function getCartIdAttribute(){
      //todos los carritos asociados al usuario.
      $this->carts()->where('status','Active')->first();
    }

}
