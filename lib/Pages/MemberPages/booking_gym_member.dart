import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gofit_10662/Api/booking_gym_api.dart';
import 'package:gofit_10662/Api/login_api.dart';
import 'package:gofit_10662/Bloc/app_bloc.dart';
import 'package:gofit_10662/global.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingGymPage extends StatefulWidget {
  const BookingGymPage({super.key});

  @override
  State<BookingGymPage> createState() => _BookingGymPageState();
}

class _BookingGymPageState extends State<BookingGymPage> {
  TextEditingController idMemberController = TextEditingController();
  TextEditingController dateSesiController = TextEditingController();

  List<String> stringList = [
    '07:00 : 09:00',
    '09:00 : 11:00',
    '11:00 : 13:00',
    '13:00 : 15:00',
    '15:00 : 17:00',
    '17:00 : 19:00',
    '19:00 : 21:00',
    ];
   String? selectedSesi;
  
  String? idMember;

  List<DropdownMenuItem<String>> getDropdownItems() {
    return stringList.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }


  @override
  initState(){
    super.initState();
    var appBloc = context.read<AppBloc>();
    inspect(appBloc.state.loginUser);
    var testData = appBloc.state.loginUser!.member;
    idMember = testData!.id;
  }  
  // TextEditingController idMemberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Booking Gym',style: TextStyle(fontSize: 25, color: Colors.blue )),
            ),
          ),
          const SizedBox(
            width: 200,
            child: Divider(thickness: 5,color: Colors.blue,),),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(child: Column(
              children: [
            //*ID Member
            TextFormField(
              enabled: false,
              initialValue: idMember,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.card_membership)
              )
              // Controller(),
            ),
            //*Date
            TextField(
                  controller: dateSesiController, //editing controller of this TextField
                  decoration: InputDecoration( 
                     prefixIcon: Icon(Icons.calendar_today), //icon of text field
                     labelText: "Enter Date" //label text of field
                  ),
                  readOnly: true,  
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime.now(), 
                        lastDate: DateTime(2101)
                    );
                    
                    if(pickedDate != null ){
                        String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);   
                        setState(() {
                           dateSesiController.text = formattedDate; //set output date to TextField value. 
                        });
                    }else{
                        print("Date is not selected");
                    }
                  },
               ),
            //*Sesi
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom:  8.0),
              child: DropdownButtonFormField<String>(
                 decoration: InputDecoration(
                  prefixIcon: Icon(Icons.access_time), // Ikon yang ditampilkan di sebelah kiri dropdown menu
                  hintText: 'Jam Berapa ?', // Text yang ditampilkan sebagai hint di dropdown menu
                ),
                items: getDropdownItems(),
                value: selectedSesi,
                onChanged: (String? item) {
                  setState(() {
                    selectedSesi = item;
                  });
                },
                hint: const Text('Ngegym jam berapa bro ?'),
                isExpanded: true,
              ),
            ),
            
            //*Button
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FilledButton(onPressed: (){
                  setState(()  {
                    var hasilResponse;
                    BookingGymApi bookingGym = BookingGymApi();
                    hasilResponse = bookingGym.store(sesi: selectedSesi ?? '', bookingDate: dateSesiController.text, IdMember: idMember!).
                    then((value){
                      
                    });
                  });

                }, child: Text('Booking')),
              ),
            )
          
              ],
            )),
          ),          
        ]);
  }
}