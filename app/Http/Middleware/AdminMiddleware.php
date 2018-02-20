<?php

namespace App\Http\Middleware;

use Closure;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //el usuario inicio sesion o no
        // if(!auth()->check()){
        //   return redirect('/login');
        // }

        //si el usuario es administrador
        if(!auth()->user()->admin){
          return redirect('/');
        }

        return $next($request);
    }
}
