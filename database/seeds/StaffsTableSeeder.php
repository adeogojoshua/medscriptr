<?php

use Illuminate\Database\Seeder;

class StaffsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i = 0; $i < 00; $i++) {
            $role = array('Administrator', 'Doctor', 'Nurse');

            DB::table('staffs')->insert([
            'first_name' => str_random(10),
            'last_name' => str_random(10),
            'email' => str_random(10).'@gmail.com',
            'role' => array_rand($role),
        ]);
        }
    }
}
