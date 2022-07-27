<?php

// namespace App\Http\Controllers;

// use App\Models\DanaBantuan;
// use Illuminate\Http\Request;

// class DanaBantuanController extends Controller
// {
//     /**
//      * Display a listing of the resource.
//      *
//      * @return \Illuminate\Http\Response
//      */
//     public function index()
//     {
//         return DanaBantuan::select('id', 'nik','kk', 'nama', 'alamat', 'jumlah_bantuan', 'status', 'diterima');
//     }

//     /**
//      * Show the form for creating a new resource.
//      *
//      * @return \Illuminate\Http\Response
//      */
//     public function create()
//     {
//         //
//     }

//     /**
//      * Store a newly created resource in storage.
//      *
//      * @param  \Illuminate\Http\Request  $request
//      * @return \Illuminate\Http\Response
//      */
//     public function store(Request $request)
//     {
//         $request->validate([
//             'nik' => 'required|max: 16',
//             'nama' => 'required',
//             'alamat' => 'required',
//             'kk' => 'required|max: 16',
//             'jumlah_bantuan' => 'required| precision: 15, scale: 2',
//             'status' => 'required',
//             'diterima' => 'nullable'
//         ]);

//         DanaBantuan::create($request->post());

//         // try {
//         //     DanaBantuan::create($request->post());

//         //     return response()->json([
//         //         'message' => 'Berhasil Menambahkan Data Bantuan !!'
//         //     ]);
//         // } catch (\Exception $e) {
//         //     \Log::error($e->getMessage());
//         //     return response()->json([
//         //         'message' => 'Terjadi kesalahan saat menambahkan data !!'
//         //     ], 500);
//         // }
//     }

//     /**
//      * Display the specified resource.
//      *
//      * @param  \App\Models\DanaBantuan  $danaBantuan
//      * @return \Illuminate\Http\Response
//      */
//     public function show(DanaBantuan $danaBantuan)
//     {
//         return response()->json([
//             'DanaBantuan' => $danaBantuan
//         ]);
        
//     }



//     /**
//      * Show the form for editing the specified resource.
//      *
//      * @param  \App\Models\DanaBantuan  $danaBantuan
//      * @return \Illuminate\Http\Response
//      */
//     public function edit(DanaBantuan $danaBantuan)
//     {
//         //
//     }

//     /**
//      * Update the specified resource in storage.
//      *
//      * @param  \Illuminate\Http\Request  $request
//      * @param  \App\Models\DanaBantuan  $danaBantuan
//      * @return \Illuminate\Http\Response
//      */
//     public function update(Request $request, DanaBantuan $danaBantuan)
//     {
//         $request->validate([
//             'nik' => 'required|max: 16',
//             'nama' => 'required',
//             'alamat' => 'required',
//             'kk' => 'required|max: 16',
//             'jumlah_bantuan' => 'required| precision: 15, scale: 2',
//             'status' => 'required',
//             'diterima' => 'nullable'
//         ]);

//         $danaBantuan->fill($request->post())->update();
//         // try {
//         //     $danaBantuan->fill($request->post())->update();

//         //     return response()->json([
//         //         'message' => 'Data Berhasil Diupdate !!'
//         //     ]);
//         // } catch(\Exception $e) {
//         //     \Log::error($e->getMessage());
//         //     return response()->json([
//         //         'message' => 'Terjadi Kesalahan Saat Mengupdate Data !!'
//         //     ]);
//         // }
//     }

//     /**
//      * Remove the specified resource from storage.
//      *
//      * @param  \App\Models\DanaBantuan  $danaBantuan
//      * @return \Illuminate\Http\Response
//      */
//     public function destroy(DanaBantuan $danaBantuan)
//     {
//         $danaBantuan->delete();
//         // try {
//         //     $danaBantuan->delete();

//         //     return response()->json([
//         //         'message' => 'Product Deleted Successfully!!'
//         //     ]);
//         // } catch (\Exception $e) {
//         //     \Log::error($e->getMessage());
//         //     return response()->json([
//         //         'message' => 'Something goes wrong while deleting a product!!'
//         //     ]);
//         // }
//     }
// }

namespace App\Http\Controllers;

use App\Models\DanaBantuan;
use Illuminate\Http\Request;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;

class DanaBantuanController extends Controller
{
    public function index()
    {
        return DanaBantuan::select('id','nik', 'nama', 'kk', 'jumlah_bantuan', 'status', 'diterima', 'alamat')->get();
    }

    public function store(Request $request)
    {
        $request->validate([
            'nik' => 'required',
            'nama' => 'required',
            'kk' => 'required',
            'alamat' => 'required',
            'jumlah_bantuan' => 'required',
            'status' => 'required',
            'diterima' => 'nullable'
        ]);

        try {
            DanaBantuan::create($request->post());

            return response()->json([
                'message' => 'Data Berhasil Ditambahkan !!'
            ]);
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
            return response()->json([
                'message' => 'Terjadi Kesalahan Saat Data Ditambahkan!!'
            ], 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(DanaBantuan $danaBantuan)
    {
        return response()->json([
            'DanaBantuan'=>$danaBantuan
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DanaBantuan $danaBantuan)
    {
        // $request->validate([
        //     'title' => 'required',
        //     'description' => 'required',
        //     'image' => 'nullable'
        // ]);

        $request->validate([
            'nik' => 'required',
            'nama' => 'required',
            'kk' => 'required',
            'alamat' => 'required',
            'jumlah_bantuan' => 'required',
            'status' => 'required',
            'diterima' => 'nullable'
        ]);
        

        try {
            $danaBantuan->fill($request->post())->update();

            return response()->json([
                'message' => 'Data Berhasil Di Update !!'
            ]);
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
            return response()->json([
                'message' => 'Terjadi Kesalahan Saat Data Di Update!!'
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(DanaBantuan $danaBantuan)
    {
        try {
            $danaBantuan->delete();

            return response()->json([
                'message' => 'Data Berhasil di Hapus!!'
            ]);
        } catch (\Exception $e) {
            \Log::error($e->getMessage());
            return response()->json([
                'message' => 'Terjadi Kesalahan saat Penghapusan Data!!'
            ]);
        }
    }
}