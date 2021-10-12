<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CompaniesFormRequest extends FormRequest
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
            'company'         => 'required|min:2',
            'phone'           => 'required|min:2|max:15',
            'address'         => 'required|min:2',
            'zipcode'         => 'required|min:2|max:8',
            'city'            => 'required|min:2',
            'state'           => 'required|min:2',
            'description'     => 'required|min:2|max:300',
            'category'        => 'required|min:2'
        ];
    }

    public function messages()
    {
        return [
            'required' => 'The :attribute field is mandatory.',
            'min'      => 'The :attribute field must be at least 2 characters long.',
            'max'      => 'This :attribute field has a maximum number.'
        ];
    }
}