import 'dart:convert';
import 'dart:developer';
import 'package:gofit_10662/global.dart';
import 'package:http/http.dart' as http;
import 'package:gofit_10662/Model/booking_gym.dart';


class BookingGymApi{

    Future<List> store({required String sesi, required String bookingDate,required String IdMember}) async{
      String apiUrl = '${GlobalGofit().url}/bookinggym';
      try{
        var apiResult = await http.post(Uri.parse(apiUrl), 
        body: 
        {
          'id_member' : IdMember,
          'tanggal_yang_di_booking_gym': bookingDate,
          'sesi_booking_gym' : sesi
        });
        inspect(apiResult);
        //* + validasi di backend
        final responseData = jsonDecode(apiResult.body);
        final responseMessage = responseData['message'];
        if(apiResult.statusCode == 200){
          return [responseMessage,true];
        }else if(apiResult.statusCode == 400){
          return [responseMessage,false];
        }else{
          return ['Gagal Booking',false];
        }
      }catch(e){
        inspect(e);
        return ['Gagal Booking',false];
      }
    }

    Future<List<BookingGym>> show(String idMember) async {
      String apiUrl = '${GlobalGofit().url}/tampilbookinggym';
      List<BookingGym> data =  [];
      try{
        var apiResult = await http.post(Uri.parse(apiUrl), body: {'id_member' : idMember});
        // inspect(apiResult);
        var jsonObject = json.decode(apiResult.body);

          for(var item in jsonObject['data']){
            data.add(BookingGym.fromJson(item));
          }
        return data;
    }catch(e){
        return data;
    }
    }  

    // Future<List> cancelBooking(String noBooking) async {
    //   String apiUrl = '$url/cancelbookinggym/$noBooking';
    //   try{
    //     var apiResult = await http.put(Uri.parse(apiUrl), );
    //     inspect(apiResult);
    //     var jsonObject = json.decode(apiResult.body);
    //     final responseData = jsonDecode(apiResult.body);
    //     final responseMessage = responseData['message'];
    //     if(apiResult.statusCode == 200){
    //       return [responseMessage,true];
    //     }else if(apiResult.statusCode == 400){
    //       return [responseMessage,false];
    //     }else{
    //       return ['Gagal Membatalkan Booking',false];
    //     }
    // }catch(e){
    //     inspect(e);
    //     return ['Gagal'];
    // }
    // }  
}