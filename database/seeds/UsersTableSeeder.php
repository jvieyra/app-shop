<?php

use Illuminate\Database\Seeder;
//import model User
use App\User;
class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
          'name'=>'Jake',
          'email'=>'kaje@hotmail.com',
          'password'=> bcrypt('123456'),
          'admin'=> true
        ]);
    }
}
