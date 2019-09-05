import 'package:flutter/material.dart';
import 'package:flutter_bottom_tabbar/home_screen.dart';
main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
