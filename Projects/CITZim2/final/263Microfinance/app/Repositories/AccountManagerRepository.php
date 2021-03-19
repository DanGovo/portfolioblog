<?php

namespace App\Repositories;

use App\Models\AccountManager;
use App\Repositories\BaseRepository;

/**
 * Class AccountManagerRepository
 * @package App\Repositories
 * @version March 18, 2021, 3:14 pm UTC
*/

class AccountManagerRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name'
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
        return AccountManager::class;
    }
}
