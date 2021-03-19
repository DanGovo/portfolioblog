<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class AccountType
 * @package App\Models
 * @version March 18, 2021, 3:10 pm UTC
 *
 * @property string $type
 */
class AccountType extends Model
{
    use SoftDeletes;

    public $table = 'account_types';
    

    protected $dates = ['deleted_at'];



    public $fillable = [
        'type'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'type' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'type' => 'required'
    ];

    
}
