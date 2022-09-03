import 'package:flutter/material.dart';
import 'package:simple_inventory_systems/constant.dart';
import 'package:simple_inventory_systems/utils/my_box.dart';
import 'package:simple_inventory_systems/utils/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),
          /*Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return MyTile();
              },
            ),
          )*/
        ],
      ),
    );
  }
}
