<?php

namespace App\Http\Controllers;

use App\DataTables\AccountManagerDataTable;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Requests\CreateAccountManagerRequest;
use App\Http\Requests\UpdateAccountManagerRequest;
use App\Repositories\AccountManagerRepository;
use Flash;
use App\Http\Controllers\AppBaseController;
use Response;
use Datatables;

class AccountManagerController extends AppBaseController
{
    /** @var  AccountManagerRepository */
    private $accountManagerRepository;

    public function __construct(AccountManagerRepository $accountManagerRepo)
    {
        $this->accountManagerRepository = $accountManagerRepo;
    }

    /**
     * Display a listing of the AccountManager.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            return Datatables::of((new AccountManagerDataTable())->get())->make(true);
        }
    
        return view('account_managers.index');
    }

    /**
     * Show the form for creating a new AccountManager.
     *
     * @return Response
     */
    public function create()
    {
        return view('account_managers.create');
    }

    /**
     * Store a newly created AccountManager in storage.
     *
     * @param CreateAccountManagerRequest $request
     *
     * @return Response
     */
    public function store(CreateAccountManagerRequest $request)
    {
        $input = $request->all();

        $accountManager = $this->accountManagerRepository->create($input);

        Flash::success('Account Manager saved successfully.');

        return redirect(route('accountManagers.index'));
    }

    /**
     * Display the specified AccountManager.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $accountManager = $this->accountManagerRepository->find($id);

        if (empty($accountManager)) {
            Flash::error('Account Manager not found');

            return redirect(route('accountManagers.index'));
        }

        return view('account_managers.show')->with('accountManager', $accountManager);
    }

    /**
     * Show the form for editing the specified AccountManager.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $accountManager = $this->accountManagerRepository->find($id);

        if (empty($accountManager)) {
            Flash::error('Account Manager not found');

            return redirect(route('accountManagers.index'));
        }

        return view('account_managers.edit')->with('accountManager', $accountManager);
    }

    /**
     * Update the specified AccountManager in storage.
     *
     * @param  int              $id
     * @param UpdateAccountManagerRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateAccountManagerRequest $request)
    {
        $accountManager = $this->accountManagerRepository->find($id);

        if (empty($accountManager)) {
            Flash::error('Account Manager not found');

            return redirect(route('accountManagers.index'));
        }

        $accountManager = $this->accountManagerRepository->update($request->all(), $id);

        Flash::success('Account Manager updated successfully.');

        return redirect(route('accountManagers.index'));
    }

    /**
     * Remove the specified AccountManager from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $accountManager = $this->accountManagerRepository->find($id);

        $accountManager->delete();

        return $this->sendSuccess('Account Manager deleted successfully.');
    }
}
