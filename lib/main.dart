import 'package:flutter/material.dart';
import 'package:responsivedesign/responsive/desktopscaffold.dart';
import 'package:responsivedesign/responsive/mobileScaffold.dart';
import 'package:responsivedesign/responsive/responsive_layout.dart';
import 'package:responsivedesign/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobileScaffold: Mobilescaffold(),
          tabletScaffold: Tabletscaffold(),
          desktopScaffold: Desktopscaffold()),
    );
  }
}
