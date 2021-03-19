<!-- Firstname Field -->
<div class="form-group col-sm-6">
    {!! Form::label('firstname', 'Firstname:') !!}
    {!! Form::text('firstname', null, ['class' => 'form-control']) !!}
</div>

<!-- Lastname Field -->
<div class="form-group col-sm-6">
    {!! Form::label('lastname', 'Lastname:') !!}
    {!! Form::text('lastname', null, ['class' => 'form-control']) !!}
</div>

<!-- Institution Field -->
<div class="form-group col-sm-6">
    {!! Form::label('institution', 'Institution:') !!}
    {!! Form::text('institution', null, ['class' => 'form-control']) !!}
</div>

<!-- Account Type Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('account_type_id', 'Account Type Id:') !!}
    {!! Form::select('account_type_id', $account_typeItems, null, ['class' => 'form-control']) !!}
</div>

<!-- Manager Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('manager_id', 'Manager Id:') !!}
    {!! Form::select('manager_id', $account_managerItems, null, ['class' => 'form-control']) !!}
</div>

<!-- Date Blacklisted Field -->
<div class="form-group col-sm-6">
    {!! Form::label('date_blacklisted', 'Date Blacklisted:') !!}
    {!! Form::text('date_blacklisted', null, ['class' => 'form-control','id'=>'date_blacklisted']) !!}
</div>

@push('scripts')
    <script type="text/javascript">
        $('#date_blacklisted').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss',
            useCurrent: true,
            sideBySide: true
        })
    </script>
@endpush

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{{ route('blacklistedClients.index') }}" class="btn btn-light">Cancel</a>
</div>
