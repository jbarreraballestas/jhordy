<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContactoRequest extends FormRequest
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
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'nombre' => 'required|max:255',
            'correo' => 'required|email:rfc,dns|max:255',
            'prefijo' => 'nullable',
            'contacto' => 'nullable|regex:/[0-9]/|min:6|max:10',
            'mensaje' => 'required',
            'g-recaptcha-response' => 'recaptcha',
        ];
    }

    public function messages()
    {
        return [
            'g-recaptcha-response.recaptcha' => 'No Captcha',
        ];
    }
}
