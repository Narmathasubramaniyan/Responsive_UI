import 'package:flutter/material.dart';
import 'package:responsivedesign/constants.dart';
import 'package:responsivedesign/util/my_box.dart';
import 'package:responsivedesign/util/my_tile.dart';

class Desktopscaffold extends StatefulWidget {
  const Desktopscaffold({super.key});

  @override
  State<Desktopscaffold> createState() => _DesktopscaffoldState();
}

class _DesktopscaffoldState extends State<Desktopscaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybackgroundcolor,
      appBar: myAppbar,
      body: Row(
        children: [
          //open drawer
          myDrawer,
          const SizedBox(
            width: 12,
          ),
          //rest of body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                //4 box on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 12.0, // Vertical spacing between items
              ),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0), // Horizontal spacing
                  color: (index % 2 == 0)
                      ? Colors.blueGrey[600]
                      : Colors.grey[300], // Alternate colors
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
