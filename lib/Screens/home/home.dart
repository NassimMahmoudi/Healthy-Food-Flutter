import 'package:flutter/material.dart';
import 'package:healthy/Models/FoodsModel.dart';
import 'dart:convert' show json, base64, ascii;
import 'package:http/http.dart' as http;
import 'package:healthy/Screens/detail/details.dart';
import 'package:healthy/Screens/menu/draw_menu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:convert';

//const SERVER_IP = "http://10.0.2.2:3000";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    //_scrollController = new ScrollController(initialScrollOffset: 5.0)
    //..addListener(() => {_scrollListener()});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4478FA),
        title: Text('Healthy Food',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22.0)),
      ),
      drawer: SideMenu(),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            backgroundColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
