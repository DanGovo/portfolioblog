<?php

namespace App\Repositories;

use App\Models\BlacklistedClient;
use App\Repositories\BaseRepository;

/**
 * Class BlacklistedClientRepository
 * @package App\Repositories
 * @version March 18, 2021, 3:26 pm UTC
*/

class BlacklistedClientRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'firstname',
        'lastname',
        'institution',
        'account_type_id',
        'manager_id',
        'date_blacklisted'
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
        return BlacklistedClient::class;
    }
}
