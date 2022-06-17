<?php

use Illuminate\Support\Facades\DB;

function members()
{
    $members = DB::select('call getAllMembersSP()');

    return $members;
}


?>
