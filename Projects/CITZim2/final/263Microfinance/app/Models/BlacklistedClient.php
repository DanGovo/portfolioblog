<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class BlacklistedClient
 * @package App\Models
 * @version March 18, 2021, 3:26 pm UTC
 *
 * @property string $firstname
 * @property string $lastname
 * @property string $institution
 * @property integer $account_type_id
 * @property integer $manager_id
 * @property string $date_blacklisted
 */
class BlacklistedClient extends Model
{
    use SoftDeletes;

    public $table = 'blacklisted_clients';


    protected $dates = ['deleted_at'];



    public $fillable = [
        'firstname',
        'lastname',
        'institution',
        'account_type_id',
        'manager_id',
        'date_blacklisted'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'firstname' => 'string',
        'lastname' => 'string',
        'institution' => 'string',
        'account_type_id' => 'integer',
        'manager_id' => 'integer',
        'date_blacklisted' => 'date'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'firstname' => 'required',
        'lastname' => 'required',
        'account_type_id' => 'required',
        'manager_id' => 'required',
        'date_blacklisted' => 'required'
    ];

    public function accounttype()
    {
        return $this->belongsTo(AccountTyppe::Class, 'account_typ_id');
    }
}
