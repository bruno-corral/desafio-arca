<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <title>Business Finder</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light mb-2 d-flex justify-content-between">
            @guest
                <a class="navbar navbar-expand-lg" href="{{ route('login') }}">Login</a>
            @endguest

            @auth
                <a class="navbar navbar-expand-lg" href="{{ route('list_companies') }}">Home</a>
            @endauth

            @auth
                <a href="/logout" class="text-danger">Logout</a>
            @endauth
        </nav>

        <div class="container">
            <div class="jumbotron">
                <h1>@yield('header')</h1>
            </div>
            
            <div>
                @yield('content')
            </div>
        
    </body>
</html>