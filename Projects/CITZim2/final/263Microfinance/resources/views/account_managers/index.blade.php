@extends('layouts.app')
@section('title')
    Account Managers 
@endsection
@section('css')
    <link href="{{ asset('assets/css/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css"/>
@endsection
@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Account Managers</h1>
            <div class="section-header-breadcrumb">
                <a href="{{ route('accountManagers.create')}}" class="btn btn-primary form-btn">Account Manager <i class="fas fa-plus"></i></a>
            </div>
        </div>
        <div class="section-body">
            <div class="card">
                <div class="card-body">
                    @include('account_managers.table')
                    @include('account_managers.templates.templates')
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        let recordsURL = "{{ route('accountManagers.index') }}/";
    </script>
    <script src="{{ asset('assets/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ mix('assets/js/custom/custom-datatable.js') }}"></script>
    <script src="{{mix('assets/js/account_managers/account_managers.js')}}"></script>
@endsection
