import 'package:flutter/material.dart';
import 'package:sec_task/tab_bar_screen.dart';

class NavBarScreen extends StatefulWidget {
  NavBarScreen({Key? key,required this.index}) : super(key: key);
  int index;
  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[widget.index],
        bottomNavigationBar:  BottomNavigationBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,
          currentIndex: widget.index,
          selectedIconTheme: const IconThemeData(size: 35),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
          ],
          onTap: (x) => setState(() {
            widget.index = x;
          }),
        )
    );
  }
}

List body=const[
   Center(
    child: Text('Body 1'),
  ),
   TabsBarScreen()
];