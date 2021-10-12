@extends('layout')

@section('header')
    <div style="text-align: center">Business Finder</div>  
@endsection

@section('content')

        @include('errors', ['errors' => $errors])

        <form action="{{ url('/companies/search') }}" method="post">
            @csrf
            <div class="row">
                <div class="col col-8">
                    <input type="text" class="form-control" name="searchCompanies" id="searchCompanies" placeholder="What are you looking for?">
                </div>
                <div class="col col-2">
                    <button type="submit" class="btn btn-primary mt-2">Search</button>
                    <a href="{{ route('form_create_company') }}" class="btn btn-dark mt-2">Add Business</a>
                </div>
            </div>
        </form>
        
        <ul class="list-group">
            @foreach($companies as $company)
                <li class="list-group-item d-flex mt-2">
                    <a href="/companies/{{ $company->id }}/companiesDetails">{{ $company->company }}</a>
                </li>
            @endforeach
        </ul>

@endsection