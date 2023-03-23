<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CourseResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        //return parent::toArray($request);
        return [
            'id' =>$this->id,
            'categorie_id' =>$this->categorie_id,
            'teacher_id' =>$this->teacher_id,
            'name' => $this->name,
            'small_desc' =>$this->small_desc,
            'desc' => $this->disc,
            'img' => $this->img
        ];
    }
}
