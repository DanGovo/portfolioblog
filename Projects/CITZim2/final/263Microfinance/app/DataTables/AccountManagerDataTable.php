<?php

namespace App\DataTables;

use App\Models\AccountManager;

/**
 * Class AccountManagerDataTable
 */
class AccountManagerDataTable
{
    /**
     * @return AccountManager
     */
    public function get()
    {
        /** @var AccountManager $query */
        $query = AccountManager::query()->select('account_managers.*');

        return $query;
    }
}
