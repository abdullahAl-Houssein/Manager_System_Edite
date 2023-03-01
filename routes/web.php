<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/','App\Http\Controllers\Aouther\HomepageController@index')->name('Aouther.homepage');
Route::get('/cate/{id}','App\Http\Controllers\Aouther\CourseController@cats')->name('Aouther.cats');
Route::get('/cate/{id}/course/{cId}','App\Http\Controllers\Aouther\CourseController@show')->name('Aouther.show');
Route::get('/contact','App\Http\Controllers\Aouther\ContactController@index')->name('Aouther.contact');
Route::post('/message/newsletter','App\Http\Controllers\Aouther\MessageController@newsletter')->name('Aouther.message.newsletter');
Route::post('/message/contact','App\Http\Controllers\Aouther\MessageController@contact')->name('Aouther.message.contact');
Route::post('/message/enroll','App\Http\Controllers\Aouther\MessageController@enroll')->name('Aouther.message.enroll');

Route::get('/dashboard/login','App\Http\Controllers\Admin\AouthController@login')->name('Admin.login');
Route::post('/dashboard/do-login','App\Http\Controllers\Admin\AouthController@doLogin')->name('Admin.doLogin');
Route::middleware('adminAuth:admin')->group(function (){
    Route::get('/dashboard','App\Http\Controllers\Admin\HomeController@index')->name('Admin.home');
    Route::get('/dashboard/logout','App\Http\Controllers\Admin\AouthController@logout')->name('Admin.logout');

    Route::get('/dashboard/cats','App\Http\Controllers\Admin\CatController@index')->name('Admin.cats.index');
    Route::get('/dashboard/cats/create','App\Http\Controllers\Admin\CatController@create')->name('Admin.cats.create');
    Route::post('/dashboard/cats/store','App\Http\Controllers\Admin\CatController@store')->name('Admin.cats.store');
    Route::get('/dashboard/cats/edit/{id}','App\Http\Controllers\Admin\CatController@edit')->name('Admin.cats.edit');
    Route::post('/dashboard/cats/update','App\Http\Controllers\Admin\CatController@update')->name('Admin.cats.update');
    Route::get('/dashboard/cats/delete/{id}','App\Http\Controllers\Admin\CatController@delete')->name('Admin.cats.delete');

    Route::get('/dashboard/teachers','App\Http\Controllers\Admin\TeacherController@index')->name('Admin.teachers.index');
    Route::get('/dashboard/teachers/create','App\Http\Controllers\Admin\TeacherController@create')->name('Admin.teachers.create');
    Route::post('/dashboard/teachers/store','App\Http\Controllers\Admin\TeacherController@store')->name('Admin.teachers.store');
    Route::get('/dashboard/teachers/edit/{id}','App\Http\Controllers\Admin\TeacherController@edit')->name('Admin.teachers.edit');
    Route::post('/dashboard/teachers/update','App\Http\Controllers\Admin\TeacherController@update')->name('Admin.teachers.update');
    Route::get('/dashboard/teachers/delete/{id}','App\Http\Controllers\Admin\TeacherController@delete')->name('Admin.teachers.delete');

    Route::get('/dashboard/courses','App\Http\Controllers\Admin\CourseController@index')->name('Admin.courses.index');
    Route::get('/dashboard/courses/create','App\Http\Controllers\Admin\CourseController@create')->name('Admin.courses.create');
    Route::post('/dashboard/courses/store','App\Http\Controllers\Admin\CourseController@store')->name('Admin.courses.store');
    Route::get('/dashboard/courses/edit/{id}','App\Http\Controllers\Admin\CourseController@edit')->name('Admin.courses.edit');
    Route::post('/dashboard/courses/update','App\Http\Controllers\Admin\CourseController@update')->name('Admin.courses.update');
    Route::get('/dashboard/courses/delete/{id}','App\Http\Controllers\Admin\CourseController@delete')->name('Admin.courses.delete');

    Route::get('/dashboard/students','App\Http\Controllers\Admin\StudentController@index')->name('Admin.students.index');
    Route::get('/dashboard/students/create','App\Http\Controllers\Admin\StudentController@create')->name('Admin.students.create');
    Route::post('/dashboard/students/store','App\Http\Controllers\Admin\StudentController@store')->name('Admin.students.store');
    Route::get('/dashboard/students/edit/{id}','App\Http\Controllers\Admin\StudentController@edit')->name('Admin.students.edit');
    Route::post('/dashboard/students/update','App\Http\Controllers\Admin\StudentController@update')->name('Admin.students.update');
    Route::get('/dashboard/students/delete/{id}','App\Http\Controllers\Admin\StudentController@delete')->name('Admin.students.delete');
    Route::get('/dashboard/students/show-courses/{id}','App\Http\Controllers\Admin\StudentController@showCourses')->name('Admin.students.showCourses');
    Route::get('/dashboard/students/{id}/add-to-course','App\Http\Controllers\Admin\StudentController@addCourse')->name('Admin.students.addCourse');
    Route::post('/dashboard/students/{id}/add-to-course','App\Http\Controllers\Admin\StudentController@storeCourse')->name('Admin.students.storeCourse');
});

/*
Route::get('/', function () {
    return view('welcome');
});
*/
