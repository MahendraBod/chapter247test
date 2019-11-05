@extends('layouts.app')

@section('style')
@endsection

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Orders</div>

                <div class="panel-body">
                    <table class="table table-hover table-bordered table-striped datatable" style="width:100%">
                        <thead>
                            <tr>
                                <th>Order Id</th>
                                <th>Invoice Number</th>
                                <th>Total Amount</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script type="text/javascript">
$(document).ready(function() {
    $('.datatable').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{{ url('orders/getdata') }}',
        columns: [
            {data: 'id', name: 'id'},
            {data: 'invoice_number', name: 'invoice_number'},
            {data: 'total_amount', name: 'total_amount'},
        ]
    });
});
</script>
@endsection