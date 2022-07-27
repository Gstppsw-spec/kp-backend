<?php

namespace App\Http\Controllers;

use App\Models\DataKematian;
use Illuminate\Http\Request;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;

class DataKematianController extends Controller
{
    public function index()
    {
        return DataKematian::select('id','nik', 'nama', 'nikWaris', 'namaWaris', 'kematian', 'status', 'diterima')->get();
    }

    public function store(Request $request)
    {
        $request->validate([
            'nik' => 'required',
            'nama' => 'required',
            'nikWaris' => 'required',
            'namaWaris' => 'required',
            'kematian' => 'required',
            'status' => 'required',
            'diterima' => 'nullable'
        ]);

        try {
            DataKematian::create($request->post());

            return response()->json([
                'message' => 'Product Created Successfully!!'
            ]);
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
            return response()->json([
                'message' => 'Something goes wrong while creating a product!!'
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(DataKematian $DataKematian)
    {
        return response()->json([
            'DataKematian'=>$DataKematian
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DataKematian $DataKematian)
    {
        // $request->validate([
        //     'title' => 'required',
        //     'description' => 'required',
        //     'image' => 'nullable'
        // ]);

        $request->validate([
            'nik' => 'required',
            'nama' => 'required',
            'nikWaris' => 'required',
            'namaWaris' => 'required',
            'kematian' => 'required',
            'status' => 'required',
            'diterima' => 'nullable'
        ]);

        try {
            $DataKematian->fill($request->post())->update();

            return response()->json([
                'message' => 'Product Updated Successfully!!'
            ]);
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
            return response()->json([
                'message' => 'Something goes wrong while updating a product!!'
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(DataKematian $DataKematian)
    {
        try {
            $DataKematian->delete();

            return response()->json([
                'message' => 'Product Deleted Successfully!!'
            ]);
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
            return response()->json([
                'message' => 'Something goes wrong while deleting a product!!'
            ]);
        }
    }
}