@extends('layouts/master')
@section('content')
<div id="layoutSidenav">
    <div id="layoutSidenav_content">

        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Tables</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                    <li class="breadcrumb-item active">Tables</li>
                </ol>
                <!-- <div class="card mb-4">
                        <div class="card-body">
                            DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the
                            <a target="_blank" href="https://datatables.net/">official DataTables documentation</a>
                            .
                        </div>
                    </div> -->
                <div class="row">
                    <div class="coll md-4">
                        <!-- <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            DataTable Example
                        </div> -->

                        <div class="mx-auto pull-right">
                            <form action="{{ url('/products') }}" method="GET" role="search">
                                <div class="input-group">
                                    <input type="text" class="" name="term" placeholder="Search" id="term">

                                </div>
                            </form>
                        </div>

                        <div class="card-body">
                            <!-- <table id="datatablesSimple"> -->
                            <table>
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Details</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($products as $product)
                                    <tr>
                                        <td>{{ $product->id }}</td>
                                        <td>{{ $product->name }}</td>
                                        <td>
                                            <form action="" method="get">
                                                <a class="btn btn-primary" href="{{ url('/details/'.$product->id)}}">Details</a>
                                            </form>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
@endsection