import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:jantakadarbar_influtter/Screens/activity_main_page.dart';

class RegisterComplaintScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterComplaintScreenState();
  }
}

class _RegisterComplaintScreenState extends State<RegisterComplaintScreen> {
  TextEditingController panjikaransankhya = TextEditingController();

  //String?  _dropDownValue;
  final genders = ['-चयन करें-', 'पुरुष', 'महिला', 'अन्य'];
  late String currentgenders = genders[0];
  List<String> yearofBirth = ["-चयन करें-"];
  late String currentyearofBirth = yearofBirth[0];
  final disablelist = ['-चयन करें-', 'हाँ', 'नहीं'];
  late String currentdisability = disablelist[0];
  bool _isReadonly = false;

  adddateinList<T>(List<T> list) {
    var date = new DateTime.now().toString();

    var dateParse = DateTime.parse(date);
    var formattedyear = dateParse.year;
    for (var i = 1930; i < formattedyear; i++) {
      yearofBirth.add(i.toString());
    }
    return yearofBirth;
  }

  //currentgenders = genders[0] ;

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
  void initState() {
    super.initState();
    adddateinList(yearofBirth);
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
            padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
            color: Colors.white,
            alignment: Alignment.center,
            child: Image.asset('Images/topnew.jpg'),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 5),
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Text('आवेदनकर्ता का विवरण',
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                  Container(
                    // optional flex property if flex is 1 because the default flex is 1
                    //flex: 1,

                    child: Column(children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          ' नाम (आधार के अनुसार अंग्रेज़ी में): [*]',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                        child: TextFormField(
                           readOnly: _isReadonly,
                          //enableInteractiveSelection: false,
                            //focusNode: FocusNode(),
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 238, 241, 241),
                              filled: true,
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueGrey, width: 1.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.5))),
                              hintText: 'नाम (आधार के अनुसार अंग्रेज़ी में) ',
                              hintStyle: TextStyle(fontSize: 12),
                              isDense: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter Your Name In English As Per Your Aadhaar.';
                              }
                              return null;
                            }),
                      ),
                    ]),
                  ),
                  Container(
                    // optional flex property if flex is 1 because the default flex is 1
                    //flex: 1,

                    child: Column(children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          'पिता/पति नाम (अंग्रेज़ी में) : [*]',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                        child: TextFormField(
                          readOnly: _isReadonly,
                            //enableInteractiveSelection: false,
                            //focusNode: FocusNode(),
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 238, 241, 241),
                              filled: true,
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueGrey, width: 1.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.5))),
                              hintText: 'पिता/पति नाम (अंग्रेज़ी में) ',
                              hintStyle: TextStyle(fontSize: 12),
                              isDense: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter Father/Husband Name in English';
                              }
                              return null;
                            }),
                      ),
                    ]),
                  ),
                  Container(
                    // optional flex property if flex is 1 because the default flex is 1
                    //flex: 1,

                    child: Column(children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          'आधार संख्या : [*]',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                        child: TextFormField(
                          readOnly: _isReadonly,
                            //enableInteractiveSelection: false,
                            //focusNode: FocusNode(),
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 238, 241, 241),
                              filled: true,
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueGrey, width: 1.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.5))),
                              hintText: 'कृपया आधार संख्या दर्ज करें',
                              hintStyle: TextStyle(fontSize: 12),
                              isDense: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter Aadhaar Number';
                              }
                              return null;
                            }),
                      ),
                    ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: Column(children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Text(
                              'लिंग  : [*]',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(1),
                              ),
                              child: DropdownButtonHideUnderline(

                                child: DropdownButtonFormField<String>(

                                  value: currentgenders,
                                  items: genders.map((gender) {
                                    return DropdownMenuItem(
                                      value: gender,
                                      child: Text(
                                        '$gender',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (val) => setState(
                                      () => currentgenders = val.toString()),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(width: 40.0),
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        //flex: 1,

                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(
                                'जन्म का वर्ष(आधार के अनुसार):[*]',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 11.0, color: Colors.black),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(1),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButtonFormField<String>(
                                    value: currentyearofBirth,
                                    items: yearofBirth.map((year) {
                                      return DropdownMenuItem(
                                        value: year,
                                        child: Text(
                                          '$year',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (val) => setState(() =>
                                        currentyearofBirth = val.toString()),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        //flex: 1,

                        child: Column(children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Text(
                              'क्या आवेदक दिव्यांग है? : [*]',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(1),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButtonFormField<String>(
                                  value: currentdisability,
                                  items: disablelist.map((disablity) {
                                    return DropdownMenuItem(
                                      value: disablity,
                                      child: Text(
                                        '$disablity',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (val) => setState(
                                      () => currentdisability = val.toString()),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(width: 40.0),
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,

                        child: Column(children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Text(
                              'मोबाइल नंबर* : [*]',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 2, 8, 10),
                            child: TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 238, 241, 241),
                                  filled: true,
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blueGrey, width: 1.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(3.5))),
                                  hintText: 'मोबाइल नंबर',
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
                    // optional flex property if flex is 1 because the default flex is 1
                    //flex: 1,

                    child: Column(children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          'ईमेल आईडी :',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                        child: TextFormField(
                            //enableInteractiveSelection: false,
                            //focusNode: FocusNode(),
                            readOnly: _isReadonly,
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 238, 241, 241),
                              filled: true,
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueGrey, width: 1.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.5))),
                              hintText: 'ईमेल आईडी  ',
                              hintStyle: TextStyle(fontSize: 12),
                              isDense: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter Your Email Id.';
                              }
                              return null;
                            }),
                      ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    child: OutlinedButton(
                      child: Text(
                        " ओटीपी प्राप्त करे  ",
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

                //TextField nearly at bottom
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
