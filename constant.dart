import 'package:flutter/material.dart';

var myDefaultBackground = Colors.green[300];

var myAppBar = AppBar(backgroundColor: Colors.green[900]);

var myDrawer = Drawer(
  backgroundColor: Colors.green[300],
  child: Column(children: const [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile(
      leading: Icon(Icons.home),
      title: Text('D A S H B O A R D'),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text('S E T T I N G S'),
    ),
  ]),
);
