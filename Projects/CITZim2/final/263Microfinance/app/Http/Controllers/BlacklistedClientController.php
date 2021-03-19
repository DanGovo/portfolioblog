<?php

namespace App\Http\Controllers;

use App\DataTables\BlacklistedClientDataTable;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Requests\CreateBlacklistedClientRequest;
use App\Http\Requests\UpdateBlacklistedClientRequest;
use App\Repositories\BlacklistedClientRepository;
use Flash;
use App\Http\Controllers\AppBaseController;
use Response;
use Datatables;

class BlacklistedClientController extends AppBaseController
{
    /** @var  BlacklistedClientRepository */
    private $blacklistedClientRepository;

    public function __construct(BlacklistedClientRepository $blacklistedClientRepo)
    {
        $this->blacklistedClientRepository = $blacklistedClientRepo;
    }

    /**
     * Display a listing of the BlacklistedClient.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            return Datatables::of((new BlacklistedClientDataTable())->get())->make(true);
        }
    
        return view('blacklisted_clients.index');
    }

    /**
     * Show the form for creating a new BlacklistedClient.
     *
     * @return Response
     */
    public function create()
    {
        return view('blacklisted_clients.create');
    }

    /**
     * Store a newly created BlacklistedClient in storage.
     *
     * @param CreateBlacklistedClientRequest $request
     *
     * @return Response
     */
    public function store(CreateBlacklistedClientRequest $request)
    {
        $input = $request->all();

        $blacklistedClient = $this->blacklistedClientRepository->create($input);

        Flash::success('Blacklisted Client saved successfully.');

        return redirect(route('blacklistedClients.index'));
    }

    /**
     * Display the specified BlacklistedClient.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $blacklistedClient = $this->blacklistedClientRepository->find($id);

        if (empty($blacklistedClient)) {
            Flash::error('Blacklisted Client not found');

            return redirect(route('blacklistedClients.index'));
        }

        return view('blacklisted_clients.show')->with('blacklistedClient', $blacklistedClient);
    }

    /**
     * Show the form for editing the specified BlacklistedClient.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $blacklistedClient = $this->blacklistedClientRepository->find($id);

        if (empty($blacklistedClient)) {
            Flash::error('Blacklisted Client not found');

            return redirect(route('blacklistedClients.index'));
        }

        return view('blacklisted_clients.edit')->with('blacklistedClient', $blacklistedClient);
    }

    /**
     * Update the specified BlacklistedClient in storage.
     *
     * @param  int              $id
     * @param UpdateBlacklistedClientRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateBlacklistedClientRequest $request)
    {
        $blacklistedClient = $this->blacklistedClientRepository->find($id);

        if (empty($blacklistedClient)) {
            Flash::error('Blacklisted Client not found');

            return redirect(route('blacklistedClients.index'));
        }

        $blacklistedClient = $this->blacklistedClientRepository->update($request->all(), $id);

        Flash::success('Blacklisted Client updated successfully.');

        return redirect(route('blacklistedClients.index'));
    }

    /**
     * Remove the specified BlacklistedClient from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $blacklistedClient = $this->blacklistedClientRepository->find($id);

        $blacklistedClient->delete();

        return $this->sendSuccess('Blacklisted Client deleted successfully.');
    }
}
