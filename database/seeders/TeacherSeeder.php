<?php

namespace Database\Seeders;

use App\Models\Teacher;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TeacherSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Teacher::create([
            'name' => 'Abdullah Al-Houssein',
            'specialty' => 'Laravel',
            'img' => '1.png'
        ]);
        Teacher::create([
            'name' => 'Ali Al-Omar',
            'specialty' => 'doctor',
            'img' => '2.png'
        ]);
        Teacher::create([
            'name' => 'Khaled Al-Omar',
            'specialty' => 'doctor',
            'img' => '3.png'
        ]);
        Teacher::create([
            'name' => 'Yasine Al-Omar',
            'specialty' => 'doctor',
            'img' => '4.png'
        ]);
        Teacher::create([
            'name' => 'Omar Al-Omar',
            'specialty' => 'programming',
            'img' => '5.png'
        ]);
        Teacher::create([
            'name' => 'Huda Al-Omar',
            'specialty' => 'Java',
            'img' => '6.png'
        ]);
        Teacher::create([
            'name' => 'Ameer Al-Omar',
            'specialty' => 'doctor',
            'img' => '7.png'
        ]);
    }
}
