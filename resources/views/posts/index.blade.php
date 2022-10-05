@extends('posts.layout')
 
@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Laravel 8 Dummy Data</h2>
            </div>
            <!-- <div class="pull-right">
                <a class="btn btn-success" href="{{ route('posts.create') }}"> Create New post</a>
            </div> -->
        </div>
    </div>

    <div class="card-header bg-white">
            <i class="fa fa-table"></i> All Data Download
                  <a href="{{url('/all-data-excel')}}" class="btn btn-primary btn-small pull-right       text-white">Excel</a>
                    <a href="{{url('/all-data-csv')}}" class="btn btn-success btn-small pull-right text-white" style="margin-right:5px;">CSV</a>
    </div>

    <div class="mx-auto pull-right">
            <form action="{{ url('/posts') }}" method="GET" role="search">
                <div class="input-group">
                    <input type="text" class="" name="term" placeholder="Search" id="term">
                                  
                </div>
            </form>
    </div>
                        

    <div class="card-header bg-white">
            <i class="fa fa-table"></i> Custom Data Download
            <form action="{{url('/custom-data-excel')}}" method="POST">
                @csrf
                @foreach ($posts as $post)
                <input type="hidden" name="posts[]" value="{{$post}}">
                @endforeach
                  <button type="submit" class="btn btn-primary btn-small pull-right text-white">Custom Excel</button>
            </form>
    </div>

    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
   
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Action</th>
        </tr>
        @foreach ($posts as $post)
        <tr>
            <td>{{ $post->id }}</td>
            <td>{{ $post->title }}</td>
            <td>{{ $post->description }}</td>
            <td>
                <form action="{{ route('posts.destroy',$post->id) }}" method="POST">
   
                    <a class="btn btn-info" href="{{ route('posts.show',$post->id) }}">Show</a>
    
                    <a class="btn btn-primary" href="{{ route('posts.edit',$post->id) }}">Edit</a>
   
                    @csrf
                    @method('DELETE')
      
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </table>
   


    <!-- <script>
    $(document).ready(function(){
        // console.log('Hellow World');

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        // var id = $(this).val();
        var data = {};
        var id = 5;
        var title = 'abc';
       $('#button').click(function() {
            $.ajax({
                url: '/custom-data-excel',
                type: 'get',

                data:{ 
                // _token:'{{ csrf_token() }}',
                id:id,
                title:title
                },
                // data: { id: id },
                // console.log('Hellow World');
                success: function(response)
                {   
                    console.log(data);
                    $('#something').html(response);

                }
                // data: JSON.stringify(data),
                // dataType: 'application/json',
                // url: '/custom-data-excel',
                // type: 'get',
                // data:{id:id},
                // contentType: 'application/json; charset=utf-8',
                // success: function (result) {
                //     alert(result);
                // },
                // failure: function (errMsg) {
                //     alert(errMsg);
                // }
            });
       });
       
    });    
    </script> -->
  
    {!! $posts->links() !!}
      
@endsection