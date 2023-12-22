<?php

namespace App\Http\Controllers;

use App\Models\Students;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;
use Intervention\Image\Facades\Image;


class StudentController extends Controller
{
    //
    public function index()
    {
        // $data = Students::where('age', '<=', 19)->orderBy('last_name', 'asc')->limit(10)->get();
        // dd($data);

        // $data = DB::table('students')
        //             ->select(DB::raw('count(*) as gender_count, gender'))->groupBy('gender')->get();

        // exception
        // $data = Students::where('id', 100)->firstOrFail()->get();


        // return view('students.index', ['students' => $data]);

        $data = array("students" => DB::table('students')->orderBy('created_at', 'desc')->simplePaginate(10));

        return view('students.index', $data);
    }

    public function show($id)
    {
        $data = Students::findOrFail($id);

        // /dd($data);
        return view('students.edit', ['student' => $data]);
    }

    public function create()
    {
        return view('students.create')->with('title', 'Add New');
    }

    public function store(Request $request)
    {
        // dd($request);
        $validated = $request->validate([
            "first_name" => ['required', 'min:3'],
            "last_name" => ['required', 'min:3'],
            "gender" => ['required'],
            "age" => ['required'],
            "email" => ['required', 'email', Rule::unique('students', 'email')],
        ]);

        Students::create($validated);

        return redirect('/')->with('message', 'New Student Added successfully!');
    }

    public function update(Request $request, Students $student)
    {
       
        $validated = $request->validate([
            "first_name" => ['required', 'min:3'],
            "last_name" => ['required', 'min:3'],
            "gender" => ['required'],
            "age" => ['required'],
            "email" => ['required', 'email'],
        ]);

        //  dd($request);

        if($request->hasFile('student_image')) 
        {
            $request->validate([
                "student_image" => 'mimes:jpeg,png,bmp,tiff |max:4096'
            ]);

            $filenameWithExtension = $request->file("student_image");

            $filename = pathinfo($filenameWithExtension, PATHINFO_FILENAME);

            $extension = $request->file("student_image")->getClientOriginalExtension();

            $filenameToStore = $filename .'_'.time().'.'.$extension;

            $smallThumbnail = $filename .'_'.time().'.'.$extension;

            $request->file("student_image")->storeAs('public/student', $filenameToStore);

            $request->file("student_image")->storeAs('public/student/thumbnail/', $smallThumbnail);

            $thumbNail = 'storage/student/thumbnail' . $smallThumbnail;

            $this->createThumbnail($thumbNail, 150, 93);

            $validated['student_image'] = $filenameToStore;

        }

        $student->update($validated);

        return back()->with('message', 'Data was successfully updated');
    }

    public function destroy(Students $student)
    {
        //  dd($request);
        $student->delete();
        return redirect('/')->with('message', 'Data was successfully deleted');
    }

    public function createThumbnail($path, $width, $height) 
    {
        //  dd($path);
        $img = Image::make($path)->resize($width, $height, function($constraint) {
            $constraint->aspectRatio();
        });

        $img->save($path);
    }
}
