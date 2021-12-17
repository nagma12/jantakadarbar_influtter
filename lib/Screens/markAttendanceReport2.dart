import 'package:flutter/material.dart';

//import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:jantakadarbar_influtter/Screens/activity_login.dart';
import 'package:jantakadarbar_influtter/Screens/activity_check_application_status.dart';
import 'package:jantakadarbar_influtter/Screens/activity_register_complaint.dart';


class MarkattendanceReport_sec extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MarkattendanceReportSecState();
  }
}

class _MarkattendanceReportSecState extends State<MarkattendanceReport_sec> {
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
                padding: const EdgeInsets.fromLTRB(2,2,2,0),
                height: 50,
                color: Colors.white,
                alignment: Alignment.center,
                child: Image.asset('Images/topnew.jpg'),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(2,5,2,6),
                        color: Color(0xffededed),
                        alignment: Alignment.center,
                        child: Text(
                            'जनता के दरबार में मुख्यमंत्री कार्यक्रम - उपस्थिति विवरणी (जिलावार)',
                            style: TextStyle(color: Colors.black,fontSize: 13)),
                      ),
                      Container(
                        padding: const EdgeInsets.all(2.0),
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Text('मीटिंग डेट ',
                            style: TextStyle(color: Colors.black,fontSize: 12)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
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
