import 'package:flutter/material.dart';
import 'package:sec_task/new_screen.dart';

class TabsBarScreen extends StatefulWidget {
  const TabsBarScreen({Key? key}) : super(key: key);

  @override
  State<TabsBarScreen> createState() => _TabsBarScreenState();
}

class _TabsBarScreenState extends State<TabsBarScreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    List tabsBody=[
      Center(child: TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewScreen()));
      },child: const Text('Push New Screen'),),),
      const Center(child: Text('tab 2'),),
    ];
    return DefaultTabController(
      // initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorWeight: 3,
            labelColor: Colors.white,
            onTap: (x){
              setState(() {});
              index =x;
              },
            tabs: const [
              Tab(text: 'tab 1',),
              Tab(text: 'tab 2',),
            ]
          ),
        ),
        body: tabsBody[index],
      ),
    );
  }
}

