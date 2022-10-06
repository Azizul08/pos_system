<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Post;

use DB;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {  
        // dd($request->id);
       // $posts = Post::where('posts')->get();

        // $posts = Post::paginate(10);
        // dd($posts);
        //$posts= DB::table('posts')->where('id', '>=' ,11)->where('id', '<', 20)->get();
        // $posts = DB::table('posts')->get();

        // //search
        //    $posts_search=Post::where([
        //     ['id','!=',Null],
        //     ['title','!=',Null],
        //     ['description','!=',Null],
        //     [function($query)use($request){
        //         if(($term=$request->term)){
        //             $query->orWhere('id','LIKE','%'.$term.'%')
        //                   ->orWhere('title','LIKE','%'.$term.'%')
        //                   ->orWhere('description','LIKE','%'.$term.'%')->get();
        //         }
        //     }]
        // ])
        // // ->orderBy("id","desc")
        // // ->paginate(10);

        // $posts=Post::all();
        $posts = DB::table('posts')->get();
        return view('posts.index',compact('posts',));
            // ->with('i', (request()->input('page', 1) - 1) * 10);
           // viewpage <!-- {!! $posts->links() !!} -->
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {   
        //$posts = Post::latest();
        // $posts = DB::table('posts')->get();
        // dd($post->id);
        return view('posts.show',compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    public function downloadExcel($data, $filename) 
    {
        function cleanData(&$str)
        {
            $str = preg_replace("/\t/", "\\t", $str);
            $str = preg_replace("/\r?\n/", "\\n", $str);
            if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"';
        }

        header("Content-Disposition: attachment; filename=\"$filename\"");
        header("Content-Type: application/vnd.ms-excel");
        $flag = false;
        foreach($data as $row) {
            if(!$flag) {
                // display field/column names as first row
                echo implode("\t", array_keys($row)) . "\n";
                $flag = true;
            }
            array_walk($row, __NAMESPACE__ . '\cleanData');
            echo implode("\t", array_values($row)) . "\n";
        }
        exit;
    }

      public function downloadCsv($data, $filename) 
    {
        function cleanData(&$str)
        {
            if($str == 't') $str = 'TRUE';
            if($str == 'f') $str = 'FALSE';
            if(preg_match("/^0/", $str) || preg_match("/^\+?\d{8,}$/", $str) || preg_match("/^\d{4}.\d{1,2}.\d{1,2}/", $str)) {
            $str = "'$str";
            }
            if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"';
        }

        header("Content-Disposition: attachment; filename=\"$filename\"");
        header("Content-Type: text/csv");

        $out = fopen("php://output", 'w');

        $flag = false;
        foreach($data as $row) {
            if(!$flag) {
                // display field/column names as first row
                fputcsv($out, array_keys($row), ',', '"');
                $flag = true;
            }
            array_walk($row, __NAMESPACE__ . '\cleanData');
            fputcsv($out, array_values($row), ',', '"');
        }

        fclose($out);
        exit;
    }


    public function AlldataExcel()
    {
        $all_data = DB::table('posts')->get();
        foreach ($all_data as $key => $value) {
            $data[$key]['id'] = $value->id;
            $data[$key]['title'] = $value->title;
            $data[$key]['description'] = $value->description;
        }
        $filename = "all_data_" . time() . ".xls";
        $this->downloadExcel($data, $filename);
    }

    public function AlldataCsv()
    {
        $all_data = DB::table('posts')->get();
        foreach ($all_data as $key => $value) {
            $data[$key]['id'] = $value->id;
            $data[$key]['title'] = $value->title;
            $data[$key]['description'] = $value->description;
        }
        $filename = "all_data_" . time() . ".csv";
        $this->downloadCsv($data, $filename);
    }

    public function CustomdataExcel(Request $request)
    {    
       // dd($request->id,$request->title);
       //dd($request->id);
        // dd ($request->all());
        // dd($request->get('id'), $request->get('name'),$request->get('description'));
        // dd($request->all());

        // $posts = Post::paginate(10);
        // $all_data = DB::table('posts')->$posts->get();
        // $all_data = Post::latest()->paginate(10);
        // $all_data = DB::table('posts')->simplepaginate(10)->get();

        // $all_data = Post::select('id', 'title')->get();
       // $all_data = DB::table('posts')->$request->get();

        // $all_data = DB::table('posts')->limit(10)->get();
        // $all_data = DB::table('posts')->get();

        // $all_data= DB::table('posts')->where('id', '>=' ,'$low')->where('id', '<', '$high')->get();
        // return response()->json($all_data);
        // $all_data= DB::table('posts')->where('id', '>=' ,10)->where('id', '<', 15)->get();
        $all_data= DB::table('posts')->where('title', '=' ,'Dr.')->get();
        // $all_data= Post::where('title', '=' ,'Dr.')->get();
        //  dd($all_data);

        foreach ($all_data as $key => $value) {
            $data[$key]['id'] = $value->id;
            $data[$key]['title'] = $value->title;
            $data[$key]['description'] = $value->description;
        }
        $filename = "custom_data_" . time() . ".xls";
        $this->downloadExcel($data, $filename);
    }


}
