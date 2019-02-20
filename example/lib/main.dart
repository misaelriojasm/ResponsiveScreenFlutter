import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';
//import library

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Flutter Responsive Screen Example'),
    );
  }
}

class Home extends StatelessWidget {
  Home({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    //Get context mediaquery and send it to our function Screen
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: hp(30),// use percentage to manage size
                width: wp(80),// use percentage to manage size
                color: Colors.yellow,
                child:cardresponsive(wp(80),hp(30))// use percentage to manage size
            ),
          ],
        ),
      ),
    );
  }
Column cardresponsive(width,height){
  // here you can setup the size of this card
 dynamic hp = Hp(height).hp;
 dynamic wp = Wp(width).wp;

    return Column(children: <Widget>[
              SizedBox(height: hp(4),), // use percentage to manage size
              Container(
                height: hp(20),// use percentage to manage size
                width: wp(80),// use percentage to manage size
                color: Colors.red,

              ),
              SizedBox(height: hp(2),),// use percentage to manage size
              Container(
                height: hp(15),// use percentage to manage size
                width: wp(40),// use percentage to manage size
                color: Colors.blue,

              ),
              SizedBox(height: hp(2),),// use percentage to manage size
              Container(
                height: hp(45),// use percentage to manage size
                width: wp(55),// use percentage to manage size
                color: Colors.green,

              )
            ]);
  }
}
