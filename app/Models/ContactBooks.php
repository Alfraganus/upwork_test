<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContactBooks extends Model
{
    use HasFactory;

    CONST ACTIVE = 1;
    CONST INACTIVE = 0;


    protected $table = 'contact_books';


}
