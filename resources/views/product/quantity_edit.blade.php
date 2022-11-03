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
                    $discount = (5 * $total) / 100;
                    $total_dis = $total - (5 * $total) / 100;
                    $due = $total_dis - 1000;

                    ?>
                </table>
            </div>
            <div class="checkout-left">

                <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
                    <h4>Summary</h4>
                    <ul>
                        <li>5% Discount <i>-</i> <span>{{ $discount }} BDT</span></li>
                        <li>Total <i>-</i> <span>{{ $total_dis }} BDT</span></li>
                        <li>Pay <i>-</i> <span> 1000 BDT</span></li>
                        <li>Due <i>-</i> <span>{{ $due }} BDT</span></li>
                    </ul>
                </div>
                <!-- <div class="clearfix"> </div> -->
            </div>
        </div>
    </div>
</div>
@endsection