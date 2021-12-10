import 'package:flutter/material.dart';
import 'dart:async';
import 'package:jantakadarbar_influtter/Screens/activity_main_page.dart';

class ApplicationStatusScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ApplicationStatusScreenState();
  }
}

class _ApplicationStatusScreenState extends State<ApplicationStatusScreen> {
  TextEditingController panjikaransankhya = TextEditingController();

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
            padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
            color: Colors.white,
            alignment: Alignment.center,
            child: Image.asset('Images/topnew.jpg'),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(0, 4, 0, 2),
              child: Column(
                children: <Widget>[
                  Container(
                    color: Color(0xff0c4150),
                    alignment: Alignment.center,
                    child: Text('आवेदन की स्थिति',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(3, 8, 0, 3),
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Text(
                              'मुख्यमंत्री जनता दरबार कार्यक्रम मे आवेदन करने के बाद यदि आवेदन की स्थिति पेंडिंग रहती  है, तो कृपया आवेदन के स्वीकृत होने का इंतजार करे, आवेदन के  स्वीकृत होने के बाद आवेदक के रजिस्टर्ड मोबाइल नंबर पर उससे संबंधित सूचना दिया जाएगा |',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                              )),
                        ),
                        SizedBox(
                          height: 10.0,
                          width: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              //flex: 1,

                              child: Column(children: <Widget>[
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Text(
                                    'पंजीकरण संख्या : [*]',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 2, 0, 10),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                        fillColor:
                                            Color.fromARGB(255, 238, 241, 241),
                                        filled: true,
                                        contentPadding: EdgeInsets.all(10),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueGrey,
                                                width: 1.5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3.5))),
                                        hintText: 'पंजीकरण संख्या ',
                                        hintStyle: TextStyle(fontSize: 12),
                                        isDense: true,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Enter registration number(if any)';
                                        }
                                        return null;
                                      }),
                                ),
                              ]),
                            ),
                            SizedBox(width: 50.0),
                            Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              //flex: 1,

                              child: Column(children: <Widget>[
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Text(
                                    'मोबाइल नंबर : [*] ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 2, 8, 10),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                        fillColor:
                                            Color.fromARGB(255, 238, 241, 241),
                                        filled: true,
                                        contentPadding: EdgeInsets.all(10),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueGrey,
                                                width: 1.5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3.5))),
                                        hintText: 'मोबाइल नंबर ',
                                        hintStyle: TextStyle(fontSize: 12),
                                        isDense: true,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Enter mobile number(if any)';
                                        }
                                        return null;
                                      }),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            'OR',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0, color: Colors.red),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              //flex: 1,

                              child: Column(children: <Widget>[
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Text(
                                    'आधार नंबर  : [*]',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 2, 0, 10),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                        fillColor:
                                            Color.fromARGB(255, 238, 241, 241),
                                        filled: true,
                                        contentPadding: EdgeInsets.all(10),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueGrey,
                                                width: 1.5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3.5))),
                                        hintText: 'आधार नंबर  ',
                                        hintStyle: TextStyle(fontSize: 12),
                                        isDense: true,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Enter Aadhaar number(if any)';
                                        }
                                        return null;
                                      }),
                                ),
                              ]),
                            ),
                            SizedBox(width: 50.0),
                            Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              //flex: 1,

                              child: Column(children: <Widget>[
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Text(
                                    'जन्म का साल : [*] ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 2, 8, 10),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                        fillColor:
                                            Color.fromARGB(255, 238, 241, 241),
                                        filled: true,
                                        contentPadding: EdgeInsets.all(10),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueGrey,
                                                width: 1.5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3.5))),
                                        hintText: 'जन्म का साल ',
                                        hintStyle: TextStyle(fontSize: 12),
                                        isDense: true,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Enter year of Birth(if any)';
                                        }
                                        return null;
                                      }),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: double.infinity,
                          child: OutlinedButton(
                            child: Text(
                              " SEARCH ",
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
                      ],
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

          /* Container(
                padding: const EdgeInsets.all(8.0),
                //color: Color(0xff0c4150),
                alignment: Alignment.center,
                child:
                Text(" App Version 1.1", style: TextStyle(color: Colors.black)),
              ),*/
          /* Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: Image.asset(
                  'Images/nic.png',
                  height: 40,
                  width: 250,
                ),
              ),*/
        ],
      ),
    ));
  }
}
