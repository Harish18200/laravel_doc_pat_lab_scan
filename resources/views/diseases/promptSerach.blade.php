@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Diseases</h2>

    @if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <div class="mb-3">
        <input type="text" id="search" class="form-control" placeholder="Search by disease name...">
    </div>

    <table class="table table-bordered">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Patient Name</th>
                <th>Disease</th>
                <th>Treatment</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody id="diseaseTable">
            <!-- Data will be dynamically inserted here -->
        </tbody>
    </table>
</div>

<!-- jQuery for AJAX Search -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        let typingTimer;
        let doneTypingInterval = 500; // Delay in milliseconds (0.5 seconds)

        $("#search").on("keyup", function() {
            clearTimeout(typingTimer);
            let query = $(this).val().trim();

            if (query.length > 0) {
                typingTimer = setTimeout(function() {
                    fetchResults(query);
                }, doneTypingInterval);
            } else {
                $("#diseaseTable").empty(); // Clear table if search is empty
            }
        });

        function fetchResults(query) {
            $.ajax({
                url: "{{ route('search.diseases') }}", // Ensure correct route
                type: "GET",
                data: {
                    query: query
                },
                dataType: "json",
                success: function(data) {
                    $("#diseaseTable").empty();

                    if (data.length === 0) {
                        $("#diseaseTable").append('<tr><td colspan="6" class="text-center">No results found.</td></tr>');
                    } else {
                        $.each(data, function(index, patient) {
                            $("#diseaseTable").append(`
                                <tr>
                                    <td>${patient.id}</td>
                                    <td>${patient.name}</td>
                                   
                                    <td>${patient.disease_name ? patient.disease_name : 'N/A'}</td>
                                    <td>${patient.disease_treatment ? patient.disease_treatment : 'N/A'}</td>
                                    <td>${patient.disease_details ? patient.disease_details : 'N/A'}</td>
                                </tr>
                            `);
                        });
                    }
                },
                error: function() {
                    alert("Error fetching data. Please try again.");
                }
            });
        }
    });
</script>


@endsection