<?php

use Illuminate\Database\Seeder;

class AdminsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admins = [
		    [
			    'name' 		 => 'john',
			    'email' 	 => 'johnsu6361@gmail.com',
			    'password' 	 => bcrypt('123456789'),
			    // 'type' 	 	 => 1,
			    'active' 	 => 1,
			    // 'level' 	 => 1,
			    'created_at' => \Carbon\Carbon::now(),
			    'updated_at' => \Carbon\Carbon::now(),
			],
			[
			    'name' 		 => 'tAken',
			    'email' 	 => 'nitehawkk@gmail.com',
			    'password' 	 => bcrypt('abcd#1234'),
			    // 'type' 	 	 => 1,
			    'active' 	 => 1,
			    // 'level' 	 => 1,
			    'created_at' => \Carbon\Carbon::now(),
			    'updated_at' => \Carbon\Carbon::now(),
			],
			[
			    'name' 		 => 'Admin',
			    'email' 	 => 'admin@gmail.com',
			    'password' 	 => bcrypt('@Admin!23#'),
			    // 'type' 	 	 => 2,
			    'active' 	 => 1,
			    // 'level' 	 => 2,
			    'created_at' => \Carbon\Carbon::now(),
			    'updated_at' => \Carbon\Carbon::now(),
			]
		];

		// factory( Admin::class )
		// 	->create()
		// 	->withRole( $this->command->choice(
		// 		'What role is the user?', [
		// 			'employee',
		// 			'manager',
		// 			'admin',
		// 		]));

		DB::table('admins')->truncate();
	    DB::table('admins')->insert( $admins );
    }
}
