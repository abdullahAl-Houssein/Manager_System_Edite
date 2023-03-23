<?php

namespace App\Listeners;

use App\Events\CourseEvent;
use App\Models\Course;
use App\Models\Student;
use App\Notifications\notificationCourse;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class Studentlistener implements ShouldQueue
{
    /**
     * Create the event listener.
     */
    /*
    public function __construct(CourseEvent $courseEvent)
    {
        foreach (Student::whereNot('id',$courseEvent->course->student_id)->cursor() as $course){
            $course->notify(new notificationCourse($courseEvent->course));
        }

    }
*/
    /**
     * Handle the event.
     */
    public function handle(CourseEvent $event): void
    {
        //
    }
}
