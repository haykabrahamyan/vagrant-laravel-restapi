<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Genre;
use App\Vote;
use Illuminate\Support\Facades\DB;

class GenreController extends Controller
{
    public function index(){
        $genre = Genre::get();
        return response()->json(['success' => 'Success','genre'=>$genre->toArray()], 200);
    }
    
    public function vote(Request $request){
        $g_id = $request->input('id');

        if (empty($g_id) || $g_id == ''){
            return response()->json(['error' => 'Parameters mismatch.'], 500);
        }

        if (!$genre = Genre::find($g_id))
            return response()->json(['error' => 'Genre not found.'], 500);

        $user = $request->user()->id;
        if (!isset($user)){
            return response()->json(['error' => 'User not Authorized'], 500);
        }
        $vote = Vote::where('user_id',$user)->where('g_id',$g_id);
        if ($vote->count()){
            return response()->json(['error' => 'User already vote.'], 500);
        }

        $vote = new Vote();
        $vote->user_id = $user;
        $vote->g_id = $g_id;
        $vote->save();

        return response()->json(['success' => 'Success'], 200);

    }

    public function result(Request $request){
        $user = $request->user()->id;
        if (!isset($user)){
            return response()->json(['error' => 'User not Authorized'], 500);
        }
        $votes = Vote::select('g_id', DB::raw('count(*) as total'))->with('getGenre')
            ->groupBy('g_id')
            ->get();
        $result = [];
        $count = Vote::count();
        foreach ($votes as $v){
            $v->total = round(($v->total / $count) * 100 , 2) . "%";
            $result[] = $v;
        }

        return response()->json(['success' => 'Success','result'=>$result], 200);

    }

}
