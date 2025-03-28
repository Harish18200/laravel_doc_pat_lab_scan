@extends('layouts.app')
@section('content')

@if(session('success'))
<div class="alert alert-success">{{ session('success') }}</div>
@endif

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
                    data: { lab_select_id: lab_select_id },
                    success: function(response) {
                        $('#lab_details_body').empty(); // Clear existing rows
                        if (response.length > 0) {
                            $.each(response, function(index, labDetail) {
                                $('#lab_details_body').append(`
                                    <tr>
                                        <td>${labDetail.id}</td>
                                        <td>${labDetail.lab_details}</td>
                                        <td>${labDetail.normal_range}</td>
                                        <td>${labDetail.unit}</td>
                                        <td>${labDetail.price}</td>
                                        <td>${labDetail.child}</td>
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
