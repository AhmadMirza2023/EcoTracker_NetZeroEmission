<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Carbon;
use App\Models\User;
use Illuminate\Http\Request;

class CarbonController extends Controller
{
    public function readAll(Request $request)
    {
        $id = $request->input('id');
        $activity_type = $request->input('activity_type');
        $activity_detail = $request->input('activity_detail');
        $emission_amount_from = $request->input('emission_amount_from');
        $emission_amount_to = $request->input('emission_amount_to');
        $limit = $request->input('limit', 6);

        if ($id) {
            $carbon = Carbon::with('user')->find($id);
            if ($carbon) {
                return response()->json([
                    'message' => 'Data list carbon berhasil diambil',
                    'data' => $carbon,
                ], 200);
            } else {
                return response()->json([
                    'message' => "Data list carbon tidak ada",
                    'data' => null,
                ], 404);
            }
        }

        $carbonQuery = Carbon::with('user');

        if ($activity_type) {
            $carbonQuery->where('activity_type', 'like', '%' . $activity_type . '%');
        }
        if ($activity_detail) {
            $carbonQuery->where('activity_detail', 'like', '%' . $activity_detail . '%');
        }
        if ($emission_amount_from) {
            $carbonQuery->where('emission_amount', '>=', $emission_amount_from);
        }
        if ($emission_amount_to) {
            $carbonQuery->where('emission_amount', '<=', $emission_amount_to);
        }

        $carbon = $carbonQuery->paginate($limit);

        return response()->json([
            'message' => "Data list carbon berhasil diambil",
            'data' => $carbon,
        ], 200);
    }

}
