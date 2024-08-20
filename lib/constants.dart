import 'package:flutter/material.dart';

//bgcolor
var mybackgroundcolor = Colors.blueGrey[300];

//appbar
var myAppbar = AppBar(
  backgroundColor: Colors.blueGrey[900],
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
);

//drawer
var myDrawer = Drawer(
  backgroundColor: Colors.blueGrey[200],
  child: const Column(
    children: [
      DrawerHeader(
          child: Icon(
        Icons.favorite,
        color: Colors.red,
      )),
      ListTile(
        leading: Icon(
          Icons.home,
        ),
        title: Text("H O M E"),
      ),
      ListTile(
        leading: Icon(
          Icons.person,
        ),
        title: Text("P R O F I L E"),
      ),
      ListTile(
        leading: Icon(
          Icons.chat,
        ),
        title: Text("M E S S A G E"),
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
        ),
        title: Text("S E T T I N G S"),
      ),
      ListTile(
        leading: Icon(
          Icons.logout,
        ),
        title: Text("L O G O U T"),
      )
    ],
  ),
);
