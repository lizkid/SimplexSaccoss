<?php

namespace App\Http\Controllers\Contributions;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use phpDocumentor\Reflection\Types\Object_;

class ContributionsController extends Controller
{
    //
    public function index()
    {
        $results = DB::select('call getAllContributionsSP()');
        $results = (object)$results;
        return view('contributions.index', compact('results'));
    }

    public function create()
    {
        $types = DB::select('call getContributionType()');

        $members = members();

        return view('contributions.create', compact('types', 'members'));
    }

    public function socialContributions()
    {
        return view('contributions.socialContributions');
    }
}
