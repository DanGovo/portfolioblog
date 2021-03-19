<?php

namespace App\Repositories;

use App\Models\AccountType;
use App\Repositories\BaseRepository;

/**
 * Class AccountTypeRepository
 * @package App\Repositories
 * @version March 18, 2021, 3:10 pm UTC
*/

class AccountTypeRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'type'
    ];

    /**
     * Return searchable fields
     *
     * @return array
     */
    public function getFieldsSearchable()
    {
        return $this->fieldSearchable;
    }

    /**
     * Configure the Model
     **/
    public function model()
    {
        return AccountType::class;
    }
}
