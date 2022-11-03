<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Product;
use App\Models\Invoice;
use DB;
use PDF;

class ProductController extends Controller
{
    public function ProductIndex(Request $request)

    {
        $products = Product::where([
            ['id', '!=', Null],
            ['name', '!=', Null],
            [function ($query) use ($request) {
                if (($term = $request->term)) {
                    $query->orWhere('id', 'LIKE', '%' . $term . '%')
                        ->orWhere('name', 'LIKE', '%' . $term . '%')->get();
                }
            }]
        ])
            // ->orderBy("id","desc")
            ->paginate();
        // dd($products);
        return view('product.view', compact('products'));
        // ->with('i', (request()->input('page', 1) - 1) * 10);
    }


    public function ProductDetails()
    {
        $details = Product::get();
        // dd($details_data);
        return view('product.details_page', compact('details'));
    }

    public function ProductDetailsSingle(Request $request, $id)
    {
        // dd($id);
        $details = Product::where('id', $id)->first();
        // $invoice_details = Invoice::where('id', $id)
        //     ->orwhere('discount', $request->discount)
        //     ->orwhere('amount_pay', $request->amount_pay)
        //     // ->orwhere('discount', 0)
        //     // ->orwhere('amount_pay', 0)
        //     ->first();
        // dd($invoice_details->discount);
        return view('product.detail', compact('details'));
    }

    // public function QuantityEdit($id)
    // {
    //     $details = Product::where('id', $id)->first();
    //     // dd($details);
    //     return view('product.quantity_edit', compact('details'));
    // }

    public function postQuantityEdit(Request $request)
    {

        $quantity_info = Product::findOrFail($request->id);
        // dd($quantity_info);
        $quantity_info->quantity = $request->quantity;
        $quantity_info->save();

        return redirect('/details/' . $quantity_info->id);
    }

    public function postDiscountEdit(Request $request)
    {
        $quantity_info = Product::findOrFail($request->id);
        $quantity_info->discount = $request->discount;
        $quantity_info->save();

        return redirect('/details/' . $quantity_info->id);
    }

    public function postAmountPayEdit(Request $request)
    {

        $quantity_info = Product::findOrFail($request->id);
        $quantity_info->pay = $request->pay;
        $quantity_info->save();

        return redirect('/details/' . $quantity_info->id);
    }

    public function postInvoice(Request $request)
    {
        // dd("hellio");
        $quantity_info = Product::findOrFail($request->id);
        // dd($quantity_info);

        $invoice = new Invoice;
        // dd($invoice);
        $invoice->invoice_id = $request->invoice_id;
        $invoice->discount = $request->dis;
        $invoice->total_amount = $request->total_dis;
        $invoice->amount_pay = $request->pay;
        $invoice->amount_due = $request->due;
        // dd($invoice);
        $invoice->save();

        return redirect('/details/' . $quantity_info->id);
    }

    public function generatePDF(Request $request)
    {
        $data = [
            'invoice_id' => $request->invoice_id,
            'discount' => $request->dis,
            'total_amount' => $request->total_dis,
            'amount_pay' => $request->pay,
            'amount_due' => $request->due,
            'date' => date('m/d/Y')
        ];
        // dd($data);
        $pdf = PDF::loadView('product.myPDF', $data);

        return $pdf->download('invoice.pdf');
    }
}
