<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use App\Category;
use Faker\Factory as Faker;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //$staticProfileImages = User::staticProfileImages();
        DB::table('categories')->truncate();
        $faker = Faker::create();

        $categories = ['Category 1', 'Category 2', 'Category 3', 'Category 4'];

        foreach ($categories as $categoryName) {

        DB::table('categories')->insert([

            'category_name' => $categoryName,
            'slug' => Str::slug($categoryName),
            'category_status' => 1,
        ]);
        
      }
        
    }
}
