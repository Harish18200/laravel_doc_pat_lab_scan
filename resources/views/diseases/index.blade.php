@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Diseases</h2>

    @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <!-- Search Input -->
    <div class="mb-3">
        <input type="text" id="search" class="form-control" placeholder="Search by disease name...">
    </div>

    <table class="table table-bordered">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Symptoms</th>
                <th>Treatment</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody id="diseaseTable">
            @forelse($diseases as $disease)
            <tr>
                <td>{{ $disease->id }}</td>
                <td class="disease-name">{{ $disease->diseases }}</td>
                <td>{{ $disease->symptoms }}</td>
                <td>{{ $disease->treatment }}</td>
                <td>{{ $disease->description }}</td>
            </tr>
            @empty
            <tr>
                <td colspan="5" class="text-center">No diseases found.</td>
            </tr>
            @endforelse
        </tbody>
    </table>
</div>

<!-- jQuery for Search -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $("#search").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#diseaseTable tr").filter(function() {
                $(this).toggle($(this).find(".disease-name").text().toLowerCase().indexOf(value) > -1);
            });
        });
    });
</script>
@endsection