<?php

namespace App\Http\Controllers;

use App\Item;
use Illuminate\Http\Request;
use DB;

class ItemController extends Controller
{
    function index(){
        $itemsPerMonth=[];
        $itemsPerMonth = DB::table('items')
                     ->select(DB::raw('MONTH(`date`) as month,YEAR(`date`) as year,(SUM(pre_tax_amount)+SUM(tax_amount)) AS total'))
                     /*->where('status', '<>', 1)*/
                     ->groupBy('year')
                     ->groupBy('month')
                     ->orderBy('month')
                     ->get();

        $itemsPerCategory=[];
        $itemsPerCategory = DB::table('items')
                     ->select(DB::raw('category,(SUM(pre_tax_amount)+SUM(tax_amount)) AS total'))
                     /*->where('status', '<>', 1)*/
                     ->groupBy('category')
                     ->orderBy('category')
                     ->get();



        return view('item',['itemsPerMonth' => $itemsPerMonth,'itemsPerCategory'=>$itemsPerCategory]);
    }

    function import(Request $request){

        $path = $request->file('uploadFile')->getRealPath();
        $data = array_map('str_getcsv', file($path));

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

            $item->save();
        }

    }
}
