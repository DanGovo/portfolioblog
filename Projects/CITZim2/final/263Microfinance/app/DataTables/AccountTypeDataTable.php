<?php

namespace App\DataTables;

use App\Models\AccountType;

/**
 * Class AccountTypeDataTable
 */
class AccountTypeDataTable
{
    /**
     * @return AccountType
     */
    public function get()
    {
        /** @var AccountType $query */
        $query = AccountType::query()->select('account_types.*');

        return $query;
    }
}
