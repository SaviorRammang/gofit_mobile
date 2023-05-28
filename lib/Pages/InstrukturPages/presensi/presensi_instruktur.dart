// import 'package:app_gym/style/color_style.dart';
// import 'package:app_gym/widget/item_presensi_widget.dart';
// import 'package:faker/faker.dart';
// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class PresensiPersonalTrainerScreen extends StatelessWidget {
//   PresensiPersonalTrainerScreen({super.key});
//   // ignore: unnecessary_new
//   var faker = new Faker();


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:gofit_10662/style/color_style.dart';
import 'package:gofit_10662/widget/item_presensi_widget.dart';

class PresensiPersonalTrainerScreen extends StatelessWidget {
  const PresensiPersonalTrainerScreen({super.key});

    @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final paddingTop = MediaQuery.of(context).padding.top;
    final bodyheight = mediaQueryHeight - paddingTop;
    return Scaffold(
      backgroundColor: primer3,
      appBar: AppBar(
        title: Text(
          " Presensi Member",
          style: TextStyle(color: primer0),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottomOpacity: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(mediaQueryWidth * 0.05),
        width: mediaQueryWidth,
        height: bodyheight,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ItemPresensiWidget(
              image: "https://picsum.photos/id/$index/200/300",
              nama: 'COba',
            );
          },
        ),
      ),
    );
  }
}

