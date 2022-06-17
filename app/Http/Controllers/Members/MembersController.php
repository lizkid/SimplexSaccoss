<?php

namespace App\Http\Controllers\Members;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use App\Mail\Member\MemberMail;
use Illuminate\Support\Facades\Mail;
use App\Models\Member;

class MembersController extends Controller
{
    public function index()
    {
        $members = members();

        return view('members.index', compact('members'));
    }

    public function create()
    {
        $gender = DB::select('call getGenderSP()');

        $attachments = DB::select('call getAttachementsSP()');

        return view('members.create', compact('gender', 'attachments'));
    }

    public function save(Request $request)
    {
        $validate = $request->validate([
            'fName'=>'required|string',
            'sName'=>'required',
            'email'=>'required|email',
            'gender'=>'required',
            'date'=>'required',
            'phone'=>'required|numeric|max:10',
            'a_type'=>'required',
            'file'=>'required|mimes:pdf|max:5000',
        ]);

        $fName = $request->fName;
        $sName = $request->sName;
        $email = $request->email;
        $gender = $request->gender;
        $date = $request->date;
        $phone = $request->phone;
        $a_type = $request->a_type;
        $file = $request->file('file')->getClientOriginalName();
        $number = '12345678';

        $member_id = substr(str_shuffle(str_repeat($x = $number, ceil(8 / strlen($x)))), 1, 8);
        $member_id = '90'.$member_id;

        $details = [
          'title'=> 'Mail from lucks',
          'body'=>'this is a testing email'
        ];

        DB::beginTransaction();

        try {

            $result = DB::select('call saveMemberSP(?,?,?,?,?,?,?,?,?)',
            array($fName, $sName, $email, $member_id, $gender,  $phone, $date, $a_type, $file));
            DB::commit();

//            Mail::to($email)->send(new MemberMail($details));
            Session::flash('alert-success', 'successfully saved');
            return back();
        }

        catch (\Throwable $exception)
        {
            DB::rollBack();

            Log::error($exception);

            if (app()->environment() == 'local')
            {
                Session::flash('alert-danger', $exception->getMessage());
                return back();
            }

            Session::flash('alert-danger',  $exception->getMessage());
            return back();
        }

    }

    public function view($member_id)
    {
        $result = DB::select('call viewMembersSP('.$member_id.')');
        $result = (object)$result[0];
        return view('members.view', compact('result'));
    }

    public function terminatedMembers()
    {
        return view('members.terminatedMembers');
    }
}
