<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Staff;
use Illuminate\Support\Facades\URL;

class DashboardController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $total = Staff::count();
        $admins = Staff::where('role', 'Administrator')->count();
        $doctors = Staff::where('role', 'Doctor')->count();
        $nurses = Staff::where('role', 'Nurse')->count();
        return view('dashboard/index')->with('total', $total)
                                                                ->with('admins', $admins)
                                                                ->with('doctors', $doctors)
                                                                ->with('nurses', $nurses);
    }

    public function create()
    {
        return view('dashboard/create');
    }

    public function store(Request $request) {
        $this->validate($request, [
            'first_name'=> 'required|string|max:255',
            'last_name'=> 'required|string|max:255',
            'email'=> 'required|string|max:255|unique:staffs',
            'role'=> 'required|string',
        ]);

        $staff = new Staff();
        $staff->first_name = ucfirst($request->first_name);
        $staff->last_name = ucfirst($request->last_name);
        $staff->email = $request->email;
        $staff->role = $request->role;

        if($staff->save()){
            return redirect(URL::previous())->with('success', 'Staff successfully added.');
        }

        return redirect(URL::previous())->with('error', 'Not successful. Please try again.');
    }

    public function all_staffs() {
        $staffs = Staff::orderBy('id', 'DESC')->paginate(10);
        return view('dashboard.staffs')->with('staffs', $staffs);
    }

    public function edit($id) {
        $staff = Staff::where('id', $id)->first();
        if(!$staff){
            return abort(404);
        }

        return view('dashboard.edit')->with('staff', $staff);
    }

    public function update(Request $request, $id){
        $this->validate($request, [
            'first_name'=> 'required|string|max:255',
            'last_name'=> 'required|string|max:255',
            'email'=> 'required|string|max:255',
            'role'=> 'required|string',
        ]);

        $staff = Staff::findOrFail($id);
        $staff->first_name = ucfirst($request->first_name);
        $staff->last_name = ucfirst($request->last_name);
        $staff->email = $request->email;
        $staff->role = $request->role;

        if($staff->save()){
            return redirect(URL::previous())->with('success', 'Staff details updated.');
        }

        return redirect(URL::previous())->with('error', 'Not successful. Please try again.');
    }

    public function destroy($id) {
        $staff = Staff::findOrFail($id);
        if($staff->delete()){
            return redirect('/dashboard/staffs')->with('success', 'Staff deleted.');
        }

        return redirect('/dashboard/staffs')->with('error', 'Not successful. Please try again.');
    }

    public function filter($param) {
        $roles = array('administrator', 'doctor', 'nurse');
        if(!in_array($param, $roles)) {
            return abort(404);
        }
        $staffs = Staff::where('role', ucfirst($param))->paginate(20);
        return view('dashboard.by_filter')->with('staffs', $staffs)->with('role', $param);
    }

    public function search(Request $request) {
        $search = $request->search;
        $field = $request->field;

        $staffs = Staff::where($field, 'LIKE', '%'. $search . '%')->orderBy('id', 'DESC')->paginate(10);
        return view('dashboard.search')->with('staffs', $staffs);
    }
}
