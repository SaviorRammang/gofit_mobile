import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:gofit_10662/global.dart';
import 'package:gofit_10662/Model/jadwal_umum.dart';


class JadwalUmumApi{
  Future<List<JadwalUmum>> getJadwalPublic() async{
    String apiURL = '${GlobalGofit().url}/jadwalumummobile';
    try{
      var result = await http.get(Uri.parse(apiURL));
      inspect(result);
      if(result.statusCode == 200){
        var jsonObject = json.decode(result.body);
        List<JadwalUmum> jadwalUmums = [];
        for (var item in jsonObject['data']) {
          jadwalUmums.add(JadwalUmum.fromJson(item));
        }
        inspect(jadwalUmums);
        return jadwalUmums;
      }
    }catch(e){
      return [];
    }
    return [];
  }

}