@extends('layouts.app')
@section('content')

@if(session('success'))
<div class="alert alert-success">{{ session('success') }}</div>
@endif

<div class="d-flex justify-content-end">
    <a href="{{ route('labCreate') }}" class="btn btn-primary">Add Lab</a>
</div>

<!-- Dropdown Select for Lab Categories -->
<div class="mt-3">
    <label for="lab_category" class="form-label">Select Lab Category</label>
    <select id="lab_category" class="form-control">
        <option value="">-- Select Category --</option>
        @foreach($labs as $lab)
        <option value="{{ $lab->id }}">{{ $lab->lab_select }}</option>
        @endforeach
    </select>
</div>

<!-- Lab List Table -->
<table class="table table-bordered mt-3">
    <thead>
        <tr>
            <th>ID</th>
            <th>Lab Details</th>
            <th>Normal Range</th>
            <th>Unit</th>
            <th>Price</th>
            <th>Child</th>
            <th>Action</th>

        </tr>
    </thead>
    <tbody id="lab_details_body">
        @foreach($labDetails as $labData)
        <tr>
            <td>{{ $labData->id }}</td>
            <td>{{ $labData->lab_details }}</td>
            <td>{{ $labData->normal_range }}</td>
            <td>{{ $labData->unit }}</td>
            <td>{{ $labData->price }}</td>
            <td>{{ $labData->child }}</td>
            <td> <a href="{{ route('labsEdit', $labData->id) }}" class="btn btn-warning btn-sm">Edit</a>

                <form action="{{ route('labsDelete')}}" method="POST" style="display:inline;">
                    @csrf
                    <input type="hidden" name="lab_id" value="{{ $labData->id }}">

                    @method('POST')
                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</button>
                </form>
            </td>

        </tr>
        @endforeach
    </tbody>
</table>

<!-- jQuery AJAX Script -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('#lab_category').change(function() {
            let lab_select_id = $(this).val();

            if (lab_select_id) {
                $.ajax({
                    url: "{{ route('getLabDetails') }}",
                    type: "GET",
                    data: {
                        lab_select_id: lab_select_id
                    },
                    success: function(response) {
                        $('#lab_details_body').empty();
                        if (response.length > 0) {
                            $.each(response, function(index, labDetail) {
                                let editUrl = `{{ route('labsEdit', ':id') }}`.replace(':id', labDetail.id);
                                let deleteUrl = `{{ route('labsDelete') }}`;

                                $('#lab_details_body').append(`
            <tr>
                <td>${labDetail.id}</td>
                <td>${labDetail.lab_details}</td>
                <td>${labDetail.normal_range}</td>
                <td>${labDetail.unit}</td>
                <td>${labDetail.price}</td>
                <td>${labDetail.child}</td>
                <td>
                    <a href="${editUrl}" class="btn btn-warning btn-sm">Edit</a>

                    <form action="${deleteUrl}" method="POST" style="display:inline;">
                        @csrf
                        <input type="hidden" name="lab_id" value="${labDetail.id}">
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</button>
                    </form>
                </td>
            </tr>
        `);
                            });
                        } else {
                            $('#lab_details_body').append('<tr><td colspan="6" class="text-center">No records found</td></tr>');
                        }
                    }
                });
            } else {
                location.reload(); // Reload page to show all data again
            }
        });
    });
</script>
@endsection