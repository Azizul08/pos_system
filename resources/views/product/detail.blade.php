@extends('layouts/master')
@section('content')
<div id="layoutSidenav">
    <div id="layoutSidenav_content">
        <div class="privacy about">

            <div class="checkout-right">
                <h4>Shopping cart details: </h4>
                <table class="timetable_sub">
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>Unit Price</th>
                            <th>Total Price</th>
                        </tr>
                    </thead>
                    <?php $total = 0 ?>
                    <tr class="rem1">

                        <td class="invert">{{ $details->name }}</td>
                        <td class="invert">
                            <!-- <div class="quantity"> -->
                            <form action="{{ url('/quantity-edit/'.$details->id) }}" method="post">
                                @csrf
                                <div class="input-group">
                                    <input type="number" name="quantity" class="form-control" value="{{ $details->quantity }}" />
                                    <span class="input-group-btn">
                                        <button type="submit" name="btn" class="btn btn-primary">Ok
                                            <!-- <span class="glyphicon glyphicon-upload"></span> -->
                                        </button>
                                    </span>
                                </div>
                            </form>
                            <!-- </div> -->
                            <!-- {{ $details->quantity }} -->
                        </td>

                        <td class="invert">{{ $details->price }}</td>
                        <td class="invert">{{ $itemTotal = $details->price*$details->quantity }}</td>
                    </tr>
                    <?php
                    $total = $total + $itemTotal;
                    $dis = ($details->discount * $total) / 100;
                    $total_dis = $total - ($details->discount * $total) / 100;
                    $due = $total_dis - $details->pay;

                    ?>
                </table>
            </div>
            <br>
            <br>
            <div class="checkout-left">

                <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">

                    <ul>
                        <div class="row">
                            <form action="{{ url('/discount-edit/'.$details->id) }}" method="post">
                                @csrf
                                <div class="input-group">
                                    <li>Discount <i>-</i></li>
                                    <input type="number" name="discount" value="{{ $details->discount }}" min="1" />
                                    <span class="input-group-btn">
                                        <button type="submit" name="btn" class="btn btn-primary">Ok
                                            <!-- <span class="glyphicon glyphicon-upload"></span> -->
                                        </button>
                                    </span>
                                    <li><i>~</i> % </li>
                                </div>
                            </form>
                        </div>
                        <div class="row">
                            <form action="{{ url('/amountpay-edit/'.$details->id) }}" method="post">
                                @csrf
                                <div class="input-group">
                                    <li>Pay Amount <i>-</i></li>
                                    <input type="number" name="pay" value="{{ $details->pay }}" min="0" />
                                    <span class="input-group-btn">
                                        <button type="submit" name="btn" class="btn btn-primary">Ok
                                            <!-- <span class="glyphicon glyphicon-upload"></span> -->
                                        </button>
                                    </span>
                                </div>
                            </form>
                        </div>

                        <h4>Summary</h4>
                        <form action="{{ url('/invoice/'.$details->id) }}" method="post">
                            @csrf

                            <li>Invoice ID <i>-</i> <span>{{ $details->id }}</span></li>
                            <input type="hidden" name="invoice_id" value="{{ $details->id }}" />

                            <li>{{$details->discount}}% Discount <i>-</i> <span>{{ $dis }} BDT</span></li>
                            <input type="hidden" name="dis" value="{{ $dis }}" />

                            <li>Total <i>-</i> <span>{{ $total_dis }} BDT</span></li>
                            <input type="hidden" name="total_dis" value="{{ $total_dis }}" />

                            <li>Pay <i>-</i> <span> {{ $details->pay }} BDT</span></li>
                            <input type="hidden" name="pay" value="{{ $details->pay }}" />

                            <li>Due <i>-</i> <span>{{ $due }} BDT</span></li>
                            <input type="hidden" name="due" value="{{ $due }}" />

                            <span class="input-group-btn">
                                <button type="submit" name="btn" class="btn btn-primary">Submit Invoice
                                    <!-- <span class="glyphicon glyphicon-upload"></span> -->
                                </button>
                            </span>
                        </form>
                        <br>
                        <form action="{{ url('/generate-pdf') }}" method="get">

                            <input type="hidden" name="invoice_id" value="{{ $details->id }}" />
                            <input type="hidden" name="dis" value="{{ $dis }}" />
                            <input type="hidden" name="total_dis" value="{{ $total_dis }}" />
                            <input type="hidden" name="pay" value="{{ $details->pay }}" />
                            <input type="hidden" name="due" value="{{ $due }}" />

                            <span class="input-group-btn">
                                <button type="submit" name="btn" class="btn btn-primary">Print Invoice
                                </button>
                            </span>

                        </form>

                        <!-- <li>{{$details->discount}}% Discount <i>-</i> <span>{{ $dis }} BDT</span></li>
                        <li>Total <i>-</i> <span>{{ $total_dis }} BDT</span></li>
                        <li>Pay <i>-</i> <span> {{ $details->pay }} BDT</span></li>
                        <li>Due <i>-</i> <span>{{ $due }} BDT</span></li> -->
                    </ul>
                </div>
                <!-- <div class="clearfix"> </div> -->
            </div>
        </div>
    </div>
</div>
@endsection