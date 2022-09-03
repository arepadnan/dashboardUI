import 'package:flutter/material.dart';
import 'package:simple_inventory_systems/constant.dart';

import '../utils/my_box.dart';
import '../utils/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 5,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 5,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return const MyTile();
              },
            ),
          )
        ],
      ),
    );
  }
}
