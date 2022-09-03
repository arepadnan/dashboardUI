import 'package:flutter/material.dart';
import 'package:simple_inventory_systems/responsive/dekstop_scaffold.dart';
import 'package:simple_inventory_systems/responsive/mobile_scaffold.dart';
import 'package:simple_inventory_systems/responsive/responsive_layout.dart';
import 'package:simple_inventory_systems/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        dekstopScaffold: const DekstopScaffold(),
      ),
    );
  }
}
