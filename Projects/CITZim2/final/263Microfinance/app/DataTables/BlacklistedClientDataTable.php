<?php

namespace App\DataTables;

use App\Models\BlacklistedClient;

/**
 * Class BlacklistedClientDataTable
 */
class BlacklistedClientDataTable
{
    /**
     * @return BlacklistedClient
     */
    public function get()
    {
        /** @var BlacklistedClient $query */
        $query = BlacklistedClient::query()->select('blacklisted_clients.*');

        return $query;
    }
}
