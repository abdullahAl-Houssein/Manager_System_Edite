<?php

namespace Database\Seeders;

use App\Models\Course;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i=1;$i<=3;$i++){
            for ($j=1;$j<=6;$j++){
                Course::create([
                    'categorie_id' => $i,
                    'teacher_id' => rand(1,7),
                    'name' => "course num $i category $j",
                    'small_desc' => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!",
                    'desc' => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!",
                    'img'=> "$i$j.png"
                ]);
            }
        }
    }
}
