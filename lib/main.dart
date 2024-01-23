import 'package:btmnav/screens/new.dart';
import 'package:btmnav/screens/old.dart';
import 'package:btmnav/screens/past.dart';
import 'package:btmnav/screens/previous.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indexNum=0;
  List tabs = [
    sun(),
    moon(),
    star(),
    planets(),
    // Text("Home",style: TextStyle(fontSize: 35,color: Colors.blue),),
    // Text("search",style: TextStyle(fontSize: 35,color: Colors.blue),),
    // Text("profile",style: TextStyle(fontSize: 35,color: Colors.blue),),
    // Text("settings",style: TextStyle(fontSize: 35,color: Colors.blue),),

  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon:Icon(Icons.menu)),
        centerTitle: true,
        title: Text("Mini Market"),

      ),
      bottomNavigationBar: BottomNavigationBar(

          items:[
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              label: "home",
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                label: "search",
                icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                label: "profile",
                icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                backgroundColor: Colors.grey,
                label: "settings",
                icon: Icon(Icons.settings)),
          ],
          iconSize: 30,
          // showSelectedLabels: false,


          currentIndex: _indexNum,
        onTap: (int index){

            setState(() {
              _indexNum= index;
            });

        }
      ),

      
      body:Center(
        child: tabs.elementAt(_indexNum),
      )


    );
  }
}

