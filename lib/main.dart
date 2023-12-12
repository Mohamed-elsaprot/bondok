import 'package:flutter/material.dart';
import 'package:sec_task/nav_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    int index=0;
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: NavBarScreen(index: index,),
    );
  }
}




