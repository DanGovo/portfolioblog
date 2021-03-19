@extends('layouts.app')
@section('title')
    Blacklisted Clients 
@endsection
@section('css')
    <link href="{{ asset('assets/css/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css"/>
@endsection
@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Blacklisted Clients</h1>
            <div class="section-header-breadcrumb">
                <a href="{{ route('blacklistedClients.create')}}" class="btn btn-primary form-btn">Blacklisted Client <i class="fas fa-plus"></i></a>
            </div>
        </div>
        <div class="section-body">
            <div class="card">
                <div class="card-body">
                    @include('blacklisted_clients.table')
                    @include('blacklisted_clients.templates.templates')
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        let recordsURL = "{{ route('blacklistedClients.index') }}/";
    </script>
    <script src="{{ asset('assets/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ mix('assets/js/custom/custom-datatable.js') }}"></script>
    <script src="{{mix('assets/js/blacklisted_clients/blacklisted_clients.js')}}"></script>
@endsection
