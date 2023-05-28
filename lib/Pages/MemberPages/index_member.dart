import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gofit_10662/Api/booking_gym_api.dart';
import 'package:gofit_10662/Model/booking_gym.dart';
import 'package:gofit_10662/Bloc/app_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IndexMember extends StatefulWidget {
  const IndexMember({super.key});

  @override
  State<IndexMember> createState() => _IndexMemberState();
}

class _IndexMemberState extends State<IndexMember> {
  List<BookingGym> listBooking = [];
  BookingGymApi bookingGymApi = BookingGymApi();

  @override
  void initState() {
    super.initState();
    getDataBooking();
  }

  getDataBooking() async{
    var appBloc = context.read<AppBloc>();
    var member = appBloc.state.loginUser!.member;
    var idMember = member!.id;
    listBooking = await bookingGymApi.show(idMember);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: ,
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('LIST BOOKING',style: TextStyle(fontSize: 25, color: Colors.blue )),
            ),
          ),
          const SizedBox(
            width: 200,
            child: Divider(thickness: 5,color: Colors.blue,)),
          Expanded(
            child: ListView.builder(
              itemCount: listBooking.length  ,
              itemBuilder: (context,index) => dataBooking(listBooking[index])
            ),),
        ],
      ),
    );
  }

  Widget dataBooking(BookingGym b) {
      return Card(
        child: ListTile(
          title: Text('Booking Gym', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text( 'Sesi  : ${b.sesiBooking} ', style: TextStyle( fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text( 'Tanggal Yang di Booking :  ${b.tanggalYangDiBookig}', style: TextStyle( fontWeight: FontWeight.bold),),
              ),
              ElevatedButton(onPressed: (){
                // bookingGymApi.
              }, child: Text('Batalin Booking')),
            ],
          ),
          ),
      );
  }
}