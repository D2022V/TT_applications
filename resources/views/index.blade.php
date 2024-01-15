@extends('layouts.layout')

@section('content')
    <div class="design-form">
    @include('errors.errors')

        <form action="{{ route('report') }}" method="post">

            @csrf
            <label for="dateAt" class="col-md-4 control-label">Date at:</label>
            <div class="col-md-6">
                <input id="dateAt" type="date" class="form-control" name="dateAt"
                       value="{{ old('dateAt', date('Y-m-d', strtotime('-1 year'))) }}">
            </div>
            <label for="dateBy" class="col-md-4 control-label">Date by:</label>
            <div class="col-md-6">
                <input id="dateBy" type="date" class="form-control" name="dateBy"
                       value="{{ old('dateBy', date('Y-m-d')) }}">
            </div>
            <input type="submit" value="Get report" class="item-btn">
        </form>
    </div>
@endsection
