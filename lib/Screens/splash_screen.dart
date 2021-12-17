import 'package:flutter/material.dart';
import 'dart:async';
import 'package:jantakadarbar_influtter/Screens/activity_main_page.dart';
import 'package:jantakadarbar_influtter/services/Networking.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    MainScreen()
            )
        )
    );
   var data =  NetworkHelper().getDistrictsFromXML(context);
   print("data");
   print(data);
   print(data.runtimeType);
  }
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
        color: Colors.white,
        alignment: Alignment.center,
        child: Image.asset('Images/topnew.jpg'),
      ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    height: 600.0,
                    alignment: Alignment.center,
                    child: Image.asset('Images/newlogo.jpg'),
                  ),

                  //TextField nearly at bottom
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Color(0xff0c4150),
            alignment: Alignment.center,
            child: Text(" Services provided by: NIC Bihar ",
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ));
  }
}
