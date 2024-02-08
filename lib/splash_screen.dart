import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_power_application/pv_quotes_text.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    print('-------->initState');


    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> PVQuotesText())));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('images/book1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Image.asset('images/brian.gif',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10),
                    child: Text('Time power\n-By Brain Tracy',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),)
                ],
              ),

            ),

          )),
    );
  }
}