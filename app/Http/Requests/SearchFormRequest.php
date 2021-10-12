<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SearchFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'searchCompanies' => 'required|min:2'
        ];
    }

    public function messages()
    {
        return [
            'required' => 'The :attribute field is mandatory.',
            'min'      => 'The :attribute field must be at least 2 characters long.'
        ];
    }
}