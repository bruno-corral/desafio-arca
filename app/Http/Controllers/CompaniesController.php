<?php

namespace App\Http\Controllers;

use App\Http\Requests\CompaniesFormRequest;
use App\Http\Requests\SearchFormRequest;
use Illuminate\Http\Request;
use App\Models\Company;
use App\Services\CompanyCreator;

class CompaniesController extends Controller
{
    public function index(Request $request)
    {
        $companies = Company::orderBy('company')->get();

        return view('companies.index', compact('companies'));
    }

    public function create()
    {
        return view('companies.create');
    }

    public function store(CompaniesFormRequest $request, CompanyCreator $companyCreator)
    {
        $companyCreator->createCompany(
            $request->company,
            $request->phone,
            $request->address,
            $request->zipcode,
            $request->city,
            $request->state,
            $request->description,
            $request->category 
        );

        return redirect()->route('list_companies');
    }

    public function companiesDetails(int $companyId)
    {
        $companies = Company::find($companyId);

        return view(
            'companies.details', 
             compact('companies')
        );
    }

    public function search(SearchFormRequest $request)
    {
        $companies = Company::where('company', 'LIKE', '%' . $request->searchCompanies . '%')
            ->orWhere('address', 'LIKE', '%'. $request->searchCompanies .'%')
            ->orWhere('zipcode', 'LIKE', '%'. $request->searchCompanies .'%')
            ->orWhere('city', 'LIKE', '%'. $request->searchCompanies .'%')
            ->orWhere('category', 'LIKE', '%'. $request->searchCompanies .'%')
            ->get();

        return view(
            'companies.index', 
            [
                'companies' => $companies, 
                'searchCompanies' => $request->searchCompanies
            ]
        );
    }
}
