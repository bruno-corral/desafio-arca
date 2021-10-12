@extends('layout')

@section('header')
    <div style="text-align: center">Business Finder</div>  
@endsection

@section('content')
    <main role="main" class="container">
        <h1 class="mt-5">{{ $companies->company }}</h1>
        <p class="lead">{{ $companies->category }}</p>
        <h1 class="mt-5">About</h1>
        <p>{{ $companies->description }}</p>
        <label>Address: {{ $companies->address }}, City: {{ $companies->city }}, Zipcode: {{ $companies->zipcode }}</label>
        <p>Phone: {{ $companies->phone }}</p>
    </main>
@endsection