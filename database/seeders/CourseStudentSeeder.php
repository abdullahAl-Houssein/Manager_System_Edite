<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CourseStudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i=1;$i<=20;$i++){
            DB::table('course_student')->insert([
                'course_id' => rand(1,18),
                'student_id' => rand(1,50),
                'created_at' => now(),
                'updated_at' => now()
            ]);
        }
    }
}
