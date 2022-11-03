@extends('layouts/master')
@section('content')
<div class="container">
    <!-- <div class="row">
        <div class="col-md-3">
            <div class="card">
                <img src="jeans3.jpg" alt="Denim Jeans" style="width:100%">
                <h1>Name</h1>
                <p class="price">Price</p>
                <p>Description</p>
                <p><button>Add to Cart</button></p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <img src="jeans3.jpg" alt="Denim Jeans" style="width:100%">
                <h1>Name</h1>
                <p class="price">Price</p>
                <p>Description</p>
                <p><button>Add to Cart</button></p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <img src="jeans3.jpg" alt="Denim Jeans" style="width:100%">
                <h1>Name</h1>
                <p class="price">Price</p>
                <p>Description</p>
                <p><button>Add to Cart</button></p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <img src="jeans3.jpg" alt="Denim Jeans" style="width:100%">
                <h1>Name</h1>
                <p class="price">Price</p>
                <p>Description</p>
                <p><button>Add to Cart</button></p>
            </div>
        </div>
    </div> -->
    <div class="row">
        @foreach ($details as $product)
        <div class="col-md-3">
            <div class="card">
                <img src="jeans3.jpg" alt="Denim Jeans" style="width:100%">
                <h1>{{ $product->name }}</h1>
                <p class="price">{{ $product->price }}</p>
                <p>{{ $product->description }}</p>
                <!-- <p><button>Add to Cart</button></p> -->
                <p><a class="btn btn-primary" href="{{ url('/details/'.$product->id)}}">Details</a></p>
            </div>
        </div>
        @endforeach
    </div>

</div>
@endsection