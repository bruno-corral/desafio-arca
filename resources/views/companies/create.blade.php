@extends('layout')

@section('header')
    <div style="text-align: center">Business Finder</div>  
@endsection

@section('content')

    @include('errors', ['errors' => $errors])

    <form method="post">
        @csrf
        <div class="row">
            <label for="company">Company</label>
            <input type="text" class="form-control" name="company" id="company">
        </div>

        <div class="row">
            <label for="phone">Phone</label>
            <input type="text" class="form-control" name="phone" id="phone">
        </div>

        <div class="row">
            <label for="address">Address</label>
            <input type="text" class="form-control" name="address" id="address">
        </div>

        <div class="row">
            <label for="zipcode">Zipcode</label>
            <input type="text" class="form-control" name="zipcode" id="zipcode">
        </div>

        <div class="row">
            <label for="city">City</label>
            <input type="text" class="form-control" name="city" id="city">
        </div>

        <div class="row">
            <label for="state">State</label>
            <select name="state" id="state" class="form-control">
                <option value="#" selected="selected"></option>
                <option value="AC">AC</option>
                <option value="AL">AL</option>
                <option value="AP">AP</option>
                <option value="AM">AM</option>
                <option value="BA">BA</option>
                <option value="DF">DF</option>
                <option value="ES">ES</option>
                <option value="GO">GO</option>
                <option value="MA">MA</option>
                <option value="MS">MS</option>
                <option value="MG">MG</option>
                <option value="PA">PA</option>
                <option value="PB">PB</option>
                <option value="PR">PR</option>
                <option value="PE">PE</option>
                <option value="PI">PI</option>
                <option value="RJ">RJ</option>
                <option value="RN">RN</option>
                <option value="RS">RS</option>
                <option value="RO">RO</option>
                <option value="RR">RR</option>
                <option value="SC">SC</option>
                <option value="SP">SP</option>
                <option value="SE">SE</option>
                <option value="TO">TO</option>
            </select>
        </div>

        <div class="row">
            <label for="description">Description</label>
            <textarea class="form-control" name="description" id="description" cols="30" rows="10"></textarea>
        </div>

        <div class="row">
            <label for="category">Category</label>
            <select name="category" id="category" class="form-control">
                <option value="#" selected="selected"></option>
                <option value="auto">Auto</option>
                <option value="beautyadnfitness">Beauty and Fitness</option>
                <option value="entertainment">Entertainment</option>
                <option value="foodanddining">Food and Dining</option>
                <option value="health">Health</option>
                <option value="sports">Sports</option>
                <option value="travel">Travel</option>
            </select>
        </div>

        <button class="form-control btn btn-primary mt-4">Save</button>
    </form>
    
@endsection