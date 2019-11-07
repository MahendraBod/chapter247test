@extends('layouts.app')

@section('style')
@endsection

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Order Items</div>

                <div class="panel-body">
                    <table class="table table-hover table-bordered table-striped datatable" style="width:100%">
                        <thead>
                            <tr>
                                <th>Item Id</th>
                                <th>Product Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
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
        ajax: {url:"{{ url('orders/'.request()->route('id').'/getdata') }}", dataSrc:""},
        columns: [
            {data: 'id', name: 'id'},
            {data: 'product_name', name: 'product_name'},
            {data: 'price', name: 'price'},
            {data: 'quantity', name: 'quantity'},
        ]
    });
});
</script>
@endsection