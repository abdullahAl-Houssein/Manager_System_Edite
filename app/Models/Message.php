<?php

namespace App\Models;

use App\Events\MessageEvent;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    use HasFactory;
    protected $guarded = ['id'];
    /*
    protected $dispatchesEvents=[
        'created'=>MessageEvent::class
    ];
*/
}
