<?php

namespace App\Http\Controllers\Payments;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PaymentsController extends Controller
{
    public function index()
    {
        return view('payments.index');
    }

    public function create()
    {

    }

    public function save(Request $request)
    {

    }

    public function paidTransactions()
    {
        return view('payments.paidTransactions');
    }


}
