import 'package:flutter/material.dart';
import 'package:responsivedesign/constants.dart';
import 'package:responsivedesign/util/my_box.dart';
import 'package:responsivedesign/util/my_tile.dart';

class Tabletscaffold extends StatefulWidget {
  const Tabletscaffold({super.key});

  @override
  State<Tabletscaffold> createState() => _TabletscaffoldState();
}

class _TabletscaffoldState extends State<Tabletscaffold> {
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
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
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
