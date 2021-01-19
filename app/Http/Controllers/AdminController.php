<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Views;

class AdminController extends Controller
{
    public function index()
    {
        return view('layouts.admin.index');
    }

    public function get_chart(Request $request)
    {
        if ($request->ajax()) {
            $thisYear = \Carbon\Carbon::now()->timezone('Asia/Jakarta')->format('Y');
            $views = Views::whereYear('created_at', $thisYear);
            $jan = $views->whereMonth('created_at', '01')->count();
            $feb = $views->whereMonth('created_at', '02')->count();
            $mar = $views->whereMonth('created_at', '03')->count();
            $apr = $views->whereMonth('created_at', '04')->count();
            $mei = $views->whereMonth('created_at', '05')->count();
            $jun = $views->whereMonth('created_at', '06')->count();
            $jul = $views->whereMonth('created_at', '07')->count();
            $ags = $views->whereMonth('created_at', '08')->count();
            $sep = $views->whereMonth('created_at', '09')->count();
            $oct = $views->whereMonth('created_at', '10')->count();
            $nov = $views->whereMonth('created_at', '11')->count();
            $dec = $views->whereMonth('created_at', '12')->count();

            $output = array(
                'jan' => $jan,
                'feb' => $feb,
                'mar' => $mar,
                'apr' => $apr,
                'mei' => $mei,
                'jun' => $jun,
                'jul' => $jul,
                'ags' => $ags,
                'sep' => $sep,
                'oct' => $oct,
                'nov' => $nov,
                'dec' => $dec,
            );
            return json_encode($output);
        }
    }
}
