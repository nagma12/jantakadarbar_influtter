import 'package:flutter/material.dart';

//import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:jantakadarbar_influtter/Screens/activity_login.dart';
import 'package:jantakadarbar_influtter/Screens/activity_check_application_status.dart';
import 'package:jantakadarbar_influtter/Screens/activity_register_complaint.dart';
import 'package:jantakadarbar_influtter/Screens/activity_applicationStatus.dart';


class QRCodeScanner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QRCodeScannerState();
  }
}

class _QRCodeScannerState extends State<QRCodeScanner> {
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
                    padding: const EdgeInsets.all(20.0),
                    color: Colors.white,
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ApplicationStatus()),
                        );
                      },
                      child: Text(
                          'आवेदक की स्तिथि  देखने के लिए यहाँ क्लिक करे ',
                          style: TextStyle(color: Colors.red)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    alignment: Alignment.topRight,
                    child: Text(
                        'मैन्युअल खोजने के लिए एप्लीकेशन आइडी दर्ज करे अथवा QR कोड स्कैन करे  ',
                        style: TextStyle(color: Colors.black)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration:
                          InputDecoration(hintText: "एप्लीकेशन आइडी दर्ज करे "),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                      onPressed: () {
                        print('Pressed');
                      },
                      child: Text(
                        " खोजे  ",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xff0c4150),
                          primary: Colors.white,
                          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    child: Text('QR कोड स्कैन करे ',
                        style: TextStyle(color: Colors.black)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    color: Colors.white,
                    alignment: Alignment.center,
                    height: 160,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Image.asset('Images/qrcode.png'),
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
