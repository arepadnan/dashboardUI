import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_inventory_systems/constant.dart';

import '../utils/my_box.dart';
import '../utils/my_tile.dart';

class DekstopScaffold extends StatefulWidget {
  const DekstopScaffold({Key? key}) : super(key: key);

  @override
  State<DekstopScaffold> createState() => _DekstopScaffoldState();
}

class _DekstopScaffoldState extends State<DekstopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          myDrawer,
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 5,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
