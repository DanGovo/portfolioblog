<!-- Firstname Field -->
<div class="form-group">
    {!! Form::label('firstname', 'Firstname:') !!}
    <p>{{ $blacklistedClient->firstname }}</p>
</div>

<!-- Lastname Field -->
<div class="form-group">
    {!! Form::label('lastname', 'Lastname:') !!}
    <p>{{ $blacklistedClient->lastname }}</p>
</div>

<!-- Institution Field -->
<div class="form-group">
    {!! Form::label('institution', 'Institution:') !!}
    <p>{{ $blacklistedClient->institution }}</p>
</div>

<!-- Account Type Id Field -->
<div class="form-group">
    {!! Form::label('account_type_id', 'Account Type Id:') !!}
    <p>{{ $blacklistedClient->account_type_id }}</p>
</div>

<!-- Manager Id Field -->
<div class="form-group">
    {!! Form::label('manager_id', 'Manager Id:') !!}
    <p>{{ $blacklistedClient->manager_id }}</p>
</div>

<!-- Date Blacklisted Field -->
<div class="form-group">
    {!! Form::label('date_blacklisted', 'Date Blacklisted:') !!}
    <p>{{ $blacklistedClient->date_blacklisted }}</p>
</div>

<!-- Created At Field -->
<div class="form-group">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{{ $blacklistedClient->created_at }}</p>
</div>

<!-- Updated At Field -->
<div class="form-group">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{{ $blacklistedClient->updated_at }}</p>
</div>

