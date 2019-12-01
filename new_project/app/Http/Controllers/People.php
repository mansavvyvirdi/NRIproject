<?php

namespace App\Http\Controllers;
use App\Item;
use Illuminate\Http\Request;
use DB;

class People extends Controller
{
    //
    function index(){
        $itemsPerMonth=[];
        $itemsPerMonth = DB::table('items')
                     ->select(DB::raw('MONTH(`date`) as month,YEAR(`date`) as year,(SUM(pre_tax_amount)+SUM(tax_amount)) AS total'))
                     /*->where('status', '<>', 1)*/
                     ->groupBy('year')
                     ->groupBy('month')
                     ->get();

        $itemsPerCategory=[];
        $itemsPerCategory = DB::table('items')
                     ->select(DB::raw('category,(SUM(pre_tax_amount)+SUM(tax_amount)) AS total'))
                     /*->where('status', '<>', 1)*/
                     ->groupBy('category')
                     ->get();



        return view('people',['itemsPerMonth' => $itemsPerMonth,'itemsPerCategory'=>$itemsPerCategory]);
    }

    function import(Request $request){
    
    
        //print_r($request->file('uploadFile'));
        //$file=$request->file('uploadFile');
        //$item->save();

        $path = $request->file('uploadFile')->getRealPath();
        $data = array_map('str_getcsv', file($path));

       // $data = array_map("str_getcsv", preg_split('/\r*\n+|\r+/', $path));
       // print_r($data); exit;
        //var_dump(json_encode($data)); exit;

        //echo sizeof($data); 
        for($i=1; $i< sizeof($data); $i++){
            $item=new Item();

            $date_array = explode('/', $data[$i][0]);
            $date= $date_array[2].'-'.$date_array[0].'-'.$date_array[1];

            $item->date=$date;
            $item->category=$data[$i][1];
            $item->lot_title=$data[$i][2];
            $item->lot_location=$data[$i][3];
            $item->lot_condition=$data[$i][4];
            $item->pre_tax_amount=$data[$i][5];
            $item->tax_name=$data[$i][6];
            $item->tax_amount=$data[$i][7];

            //var_dump($item); exit;
            $item->save();
        }

        

        // $csv_data_file = Item::create([
        //     'csv_filename' => $request->file('uploadFile')->getClientOriginalName(),
        //     'csv_header' => $request->has('header'),
        //     'csv_data' => json_encode($data)
        // ]);

    

        //$csv_data = array_slice($data, 0, 2);
        //return view('import_fields', compact('csv_data', 'csv_data_file'));
    }
}
