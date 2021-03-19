<?php

namespace App\Http\Controllers;

use App\DataTables\AccountTypeDataTable;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Requests\CreateAccountTypeRequest;
use App\Http\Requests\UpdateAccountTypeRequest;
use App\Repositories\AccountTypeRepository;
use Flash;
use App\Http\Controllers\AppBaseController;
use Response;
use Datatables;

class AccountTypeController extends AppBaseController
{
    /** @var  AccountTypeRepository */
    private $accountTypeRepository;

    public function __construct(AccountTypeRepository $accountTypeRepo)
    {
        $this->accountTypeRepository = $accountTypeRepo;
    }

    /**
     * Display a listing of the AccountType.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            return Datatables::of((new AccountTypeDataTable())->get())->make(true);
        }
    
        return view('account_types.index');
    }

    /**
     * Show the form for creating a new AccountType.
     *
     * @return Response
     */
    public function create()
    {
        return view('account_types.create');
    }

    /**
     * Store a newly created AccountType in storage.
     *
     * @param CreateAccountTypeRequest $request
     *
     * @return Response
     */
    public function store(CreateAccountTypeRequest $request)
    {
        $input = $request->all();

        $accountType = $this->accountTypeRepository->create($input);

        Flash::success('Account Type saved successfully.');

        return redirect(route('accountTypes.index'));
    }

    /**
     * Display the specified AccountType.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $accountType = $this->accountTypeRepository->find($id);

        if (empty($accountType)) {
            Flash::error('Account Type not found');

            return redirect(route('accountTypes.index'));
        }

        return view('account_types.show')->with('accountType', $accountType);
    }

    /**
     * Show the form for editing the specified AccountType.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $accountType = $this->accountTypeRepository->find($id);

        if (empty($accountType)) {
            Flash::error('Account Type not found');

            return redirect(route('accountTypes.index'));
        }

        return view('account_types.edit')->with('accountType', $accountType);
    }

    /**
     * Update the specified AccountType in storage.
     *
     * @param  int              $id
     * @param UpdateAccountTypeRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateAccountTypeRequest $request)
    {
        $accountType = $this->accountTypeRepository->find($id);

        if (empty($accountType)) {
            Flash::error('Account Type not found');

            return redirect(route('accountTypes.index'));
        }

        $accountType = $this->accountTypeRepository->update($request->all(), $id);

        Flash::success('Account Type updated successfully.');

        return redirect(route('accountTypes.index'));
    }

    /**
     * Remove the specified AccountType from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $accountType = $this->accountTypeRepository->find($id);

        $accountType->delete();

        return $this->sendSuccess('Account Type deleted successfully.');
    }
}
