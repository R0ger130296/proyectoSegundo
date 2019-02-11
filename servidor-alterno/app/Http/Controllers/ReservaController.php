<?php 

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\DB;
class ReservaController extends Controller
{
    public function crear(Request $request)
    {
        try{
            $data = $request -> json() -> all();
            $sql = "insert into reserva(pers_ci, fecha, numeromesas, numeropersonas, hora) values(?,?,?,?,?)";
            $parameters = 
            [$data['pers_ci'], 
             $data['fecha'], 
             $data['numeromesas'], 
             $data['numeropersonas'],
             $data['hora']];
            $response = DB::select($sql, $parameters);
            if ($response){
                return response()->json($parameters,201);
            }else {
                return response()->json(false);
            }
        
        }catch(QueryException $e){
            return response()->json($e,500);
        }catch(\PDOException $e){
            return response()->json($e,500);
        }
    }
    
    public function consultar(Request $request)
    {
        $data = $request->json()->all();
        $sql = "select * from reserva where pers_ci = ?";
        $parameters = 
        [$data['pers_ci']];
        $response = DB::select($sql);
        return $response;
    }
}