import 'package:flutter/material.dart';

//import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:jantakadarbar_influtter/Screens/activity_login.dart';
import 'package:jantakadarbar_influtter/Screens/activity_check_application_status.dart';
import 'package:jantakadarbar_influtter/Screens/activity_register_complaint.dart';

class ApplicationStatus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ApplicationStatusState();
  }
}

class _ApplicationStatusState extends State<ApplicationStatus> {
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
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                            'आवेदक विवरण खोजे ',
                            style: TextStyle(color: Colors.red,fontSize: 15)),
                      ),

                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                        child: Row (
                          children: [
                            Expanded(
                              flex : 9,
                              child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 238, 241, 241),
                              filled: true,
                              contentPadding: EdgeInsets.fromLTRB(10,10,10,5),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueGrey, width: 1.5),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(3.5))),
                              hintText: 'आवेदक विवरण ',
                              hintStyle: TextStyle(fontSize: 12),
                              isDense: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter applicant credentials.';
                              }
                              return null;
                            }),
                            ),
                            Expanded(
                              flex: 1,
                            child: Image.asset(
                                'Images/search.png'),
                            ),
                          ],
                            ),
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
