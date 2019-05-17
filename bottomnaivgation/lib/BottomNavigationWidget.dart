import 'package:flutter/material.dart';
import './pages/HomeScreen.dart';
import './pages/MailScreen.dart';
import './pages/PaymentScreen.dart';
import './pages/PetsScreen.dart';

 class BottomNavigationWidget extends StatefulWidget {
   _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
 }
 
 class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
   final _bottomNavigationColor=Colors.blue;
   int _currentIndex = 0;
   List<Widget> list = List();

   @override
     void initState() {
       list
        ..add(HomeScreen())
        ..add(SwitchAndCheckBoxTestRoute())
        ..add(PaymentScreen())
        ..add(PetsScreen());
       super.initState();
     }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: list[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         items: [
           BottomNavigationBarItem(
             icon: Icon(
               Icons.message,
               color: _bottomNavigationColor,
              ),
              title: Text(
                '微信',
                style: TextStyle(color: _bottomNavigationColor),
              ),
           ),
           BottomNavigationBarItem(
             icon: Icon(
               Icons.mail,
               color: _bottomNavigationColor,
              ),
              title: Text(
                '通讯录',
                style: TextStyle(color: _bottomNavigationColor),
              ),
           ),
           BottomNavigationBarItem(
             icon: Icon(
               Icons.payment,
               color: _bottomNavigationColor,
              ),
              title: Text(
                '发现',
                style: TextStyle(color: _bottomNavigationColor),
              ),
           ),
           BottomNavigationBarItem(
             icon: Icon(
               Icons.person,
               color: _bottomNavigationColor,
              ),
              title: Text(
                '我',
                style: TextStyle(color: _bottomNavigationColor),
              ),
           ),
         ],
         currentIndex: _currentIndex,
         onTap: (int index){
            setState(() {
              _currentIndex = index;           
            });
         },
       ),
     );
   }
 }