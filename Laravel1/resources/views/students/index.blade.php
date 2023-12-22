{{-- @dd(auth()->user()->name) --}}
@include('partials.header')
    @php
        $array = array('title' => 'Student System');
    @endphp
    <x-nav :data="$array"/>
    
    <header class="max-w-lg mx-auto mt-5">
        <a href="#">
            <h1 class="text-4xl font-bold text-white text-center">
                Student List
            </h1>
        </a>
    </header>
    <section class="mt-10">
        <div class="overflow-x-auto relative">
            <table class="w-96 mx-auto text-sm text-left text-gray-500">
                <thead class="text-xs text gray-700 uppercase bg-gray-50">
                    <tr>
                        <th scope="col" class="py-3 px-6">
                            First Name
                        </th>
                        <th scope="col" class="py-3 px-6">
                            Last Name
                        </th>
                        <th scope="col" class="py-3 px-6">
                            Email
                        </th>
                        <th scope="col" class="py-3 px-6">
                            Age
                        </th>
                        <th scope="col" class="py-3 px-6">
                            Gender
                        </th>
                        <th scope="col" class="py-3 px-6">
                            
                        </th>
                    </tr>
                </thead>

                <tbody>
@foreach ($students as $student )
                    <tr class="bg-gray-800 border-b text-white">
                        <td class="py-4 px-6">
                            {{ $student->first_name; }}
                        </td>
                        <td class="py-4 px-6">
                            {{ $student->last_name; }}
                        </td>
                        <td class="py-4 px-6">
                            {{ $student->email; }}
                        </td>
                        <td class="py-4 px-6">
                            {{ $student->age; }}
                        </td>
                        <td class="py-4 px-6">
                            {{ $student->gender; }}
                        </td>
                        <td class="py-4 px-6">
                            <a href="/student/{{ $student->id }}" class="bg-purple-600 text-white px-4 py-1 rounded">view</a>
                        </td>
                    </tr>
@endforeach
                </tbody>
            </table>
            <div class="mx-auto max-w-lg pt-2 p-4">
                {{ $students->links() }}
            </div>
        </div>
    </section>
@include('partials.footer')

    {{-- <h1>Hellow World</h1>
<table>
    <tr>
        <thead>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Gender</td>
            <td>Age</td>
            <td>Email</td>
            <td>Created</td>
        </thead>
    </tr>
@foreach ($students as $student )
    <tr>
        <td>{{ $student->first_name; }}</td>
        <td>{{ $student->last_name; }}</td>
        <td>{{ $student->gender; }}</td>
        <td>{{ $student->age; }}</td>
        <td>{{ $student->email; }}</td>
        <td>{{ $student->created_at->diffForHumans(); }}</td>
        <td>{{ $student->gender; }} {{ $student->gender_count; }}</td>
    </tr>  
@endforeach
    
    
</table> --}}