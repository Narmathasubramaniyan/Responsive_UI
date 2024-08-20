import 'package:flutter/material.dart';
import 'package:responsivedesign/constants.dart';
import 'package:responsivedesign/util/my_box.dart';
import 'package:responsivedesign/util/my_tile.dart';

class Mobilescaffold extends StatefulWidget {
  const Mobilescaffold({super.key});

  @override
  State<Mobilescaffold> createState() => _MobilescaffoldState();
}

class _MobilescaffoldState extends State<Mobilescaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: mybackgroundcolor,
      drawer: myDrawer,
      body: Column(
        children: [
          //4 box on the top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return const MyBox();
                  }),
            ),
          ),
          //tile below it
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const MyTile();
                  }))
        ],
      ),
    );
  }
}
