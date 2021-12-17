import 'package:flutter/material.dart';

//import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:jantakadarbar_influtter/Screens/activity_login.dart';
import 'package:jantakadarbar_influtter/Screens/activity_check_application_status.dart';
import 'package:jantakadarbar_influtter/Screens/activity_register_complaint.dart';
import 'package:jantakadarbar_influtter/Screens/activity_qr_code_scanner.dart';
import 'package:jantakadarbar_influtter/Screens/markedAttendanceReport1.dart';
import 'package:jantakadarbar_influtter/Screens/markAttendanceReport2.dart';
import 'package:jantakadarbar_influtter/Screens/activity_main_page.dart';

class MarkAttenadanceDashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MarkAttendanceState();
  }
}

class _MarkAttendanceState extends State<MarkAttenadanceDashboard> {
  /*void initState() {
    super.initState();
    getLocationData();
  }*/
  void logout() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
              children:[
                Image.asset(
                  'Images/logo_janta.png', width: 40),
                Text(' Logout')
              ]
          ),
            content: Text("क्या आप सुनिश्चित हैं की आप ऍप से लॉगआउट करना चाहते है ??"),
            actions: <Widget>[
        Row(
        children: [
          new TextButton(
             child: const Text("हाँ"),
             onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(
                     builder: (context) => MainScreen()),
               );
              },
            ),
          new TextButton(
               child: const Text("नहीं"),
               onPressed: () {
               Navigator.of(context).pop();
            },
          ),

        ],
        ),
            ],
        );
      },
    );
  }

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
                height: 50,
                color: Colors.white,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      flex: 9,
                      child: Image.asset('Images/topnotnic.jpg'),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          logout();
                          },
                        child: Image.asset(
                          'Images/logout.png',),
                      ),

                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Color(0xffb3cde0),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                  'नाम : ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                  'यूज़र आईडी : ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Color(0xffb3cde0),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                  'मोबाइल : ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                  'दिनांक : ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color(0xffb3cde0),
                        alignment: Alignment.center,
                        child: Divider(
                          color: Colors.white,
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QRCodeScanner()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xff0c4150),
                              primary: Colors.white,
                              padding: EdgeInsets.all(5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),

                          //padding: EdgeInsets.all(10),
                          child: Column(children: [
                            Icon(
                              Icons.qr_code_scanner_sharp,
                              color: Colors.white,
                              size: 55.0,
                            ),
                            Text(
                              " आवेदक की उपस्थिति दर्ज करें ",
                              style: TextStyle(fontSize: 14),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MarkattendanceReport()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xff0c4150),
                              primary: Colors.white,
                              padding: EdgeInsets.all(5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),

                          //padding: EdgeInsets.all(10),
                          child: Column(children: [
                            Icon(
                              Icons.portrait_outlined,
                              color: Colors.white,
                              size: 55.0,
                            ),
                            Text(
                              " आपके द्वारा अंकित उपस्थिति ",
                              style: TextStyle(fontSize: 14),
                            ),
                          ]),
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MarkattendanceReport_sec()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xff0c4150),
                              primary: Colors.white,
                              padding: EdgeInsets.all(5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),

                          //padding: EdgeInsets.all(10),
                          child: Column(children: [
                            Icon(
                              Icons.text_snippet_outlined,
                              color: Colors.white,
                              size: 55.0,
                            ),
                            Text(
                              " तिथिवार कुल अंकित उपस्थिति ",
                              style: TextStyle(fontSize: 14),
                            ),
                          ]),
                        ),
                      ),
                      //TextField nearly at bottom
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
