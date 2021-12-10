import 'package:flutter/material.dart';
import 'dart:async';
import 'package:jantakadarbar_influtter/Screens/activity_main_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  /*@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                MainScreen()
            )
        )
    );
  }*/
  /*void initState() {
    super.initState();
    getLocationData();
  }*/

  /*void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Header Container
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Color(0xff0c4150),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    height: 230.0,
                    alignment: Alignment.center,
                    child: Image.asset('Images/newlogo.jpg'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Enter Username"),
                  ),
                  SizedBox(
                    height: 30.0,
                    width: 30.0,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Enter Password"),
                  ),
                  Container(
                    margin: EdgeInsets.all(50),
                    width: double.infinity,
                    child: OutlinedButton(
                      child: Text(
                        " LOGIN ",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xff0c4150),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        print('Pressed');
                      },
                    ),
                  ),

                  //TextField nearly at bottom
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            //color: Color(0xff0c4150),
            alignment: Alignment.center,
            child:
                Text(" App Version 1.1", style: TextStyle(color: Colors.black)),
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Image.asset(
              'Images/nic.png',
              height: 40,
              width: 250,
            ),
          ),
        ],
      ),
    ));
  }
}
