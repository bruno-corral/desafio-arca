<?php

namespace App\Services;

use App\Models\Company;

class CompanyCreator
{
    public function createCompany(
        string $company, 
        string $phone, 
        string $address, 
        string $zipcode, 
        string $city, 
        string $state, 
        string $description,
        string $category
        ): Company
    {
        $company = Company::create([
            'company'     => $company, 
            'phone'       => $phone, 
            'address'     => $address, 
            'zipcode'     => $zipcode, 
            'city'        => $city, 
            'state'       => $state,
            'description' => $description, 
            'category'    => $category
        ]);

        $company->save();

        return $company;
    }
}