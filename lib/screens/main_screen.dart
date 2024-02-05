import 'package:flutter/material.dart';
import 'package:oshtravel_/screens/menu_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget>   _widgetOptions =[
    MenuScreen(),
   Text("1 Bet",style: TextStyle(fontSize: 25),),
   Text("2 Bet",style: TextStyle(fontSize: 25),) 
  ];
  int selecktedIndex = 0;
  void funksia(int index){
    setState(() {
      selecktedIndex =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: _widgetOptions.elementAt(selecktedIndex),)),
 bottomNavigationBar: BottomNavigationBar(
  showSelectedLabels: true,
   currentIndex: selecktedIndex,
   onTap: funksia,

  items:[ 
   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
   BottomNavigationBarItem(icon: Icon(Icons.newspaper),label: "News"),
   BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
      ],
     ),
    );
  }
}