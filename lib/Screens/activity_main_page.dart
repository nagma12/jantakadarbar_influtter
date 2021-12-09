import 'package:flutter/material.dart';

//import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
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
                    padding: const EdgeInsets.all(2.0),
                    color: Color(0xff0c4150),
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        print('Text Clicked');
                      },
                      child: Text('Official Login',style: TextStyle(color: Colors.white)),
                    ),

                  ),
                  SizedBox(
                    height: 200.0,
                    width: 500.0,
                    child: Carousel(
                      images: [
                        //Image.asset('Images/banner1.jpg', fit: BoxFit.cover,),
                        //NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                        ExactAssetImage("Images/banner1.jpg"),
                        ExactAssetImage("Images/banner3.jpg"),
                      ],
                      autoplay: true,
                      animationDuration: Duration(milliseconds: 1000),
                      dotSize: 6.0,
                      dotSpacing: 15.0,
                      dotColor: Colors.lightGreenAccent,
                      borderRadius: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: OutlinedButton(
                      child: Text(
                        " जनता के दरबार में मुख्यमंत्री” कार्यक्रम के लिए आवेदन करें | ",
                        style: TextStyle(fontSize: 12.0),
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
                  Container(
                    margin: EdgeInsets.all(4),
                    child: OutlinedButton(
                      child: Text(
                        " आवेदन की स्थिति ",
                        style: TextStyle(fontSize: 12.0),
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
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Color(0xff87CEFA),
                    //color : Colors.lightBlue,
                    alignment: Alignment.center,
                    //child: Text(" जनता के दरबार में मुख्यमंत्री” कार्यक्रम " ),

                    child: RichText(
                      text: TextSpan(
                          text: '" जनता के दरबार में मुख्यमंत्री” कार्यक्रम "' +
                              "\n",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: "\n" +
                                  "राज्य की जनता से सीधा संवाद स्थापित करने, उनकी समस्यायों एवं शिकायतों से अवगत होने तथा उनके त्वरित निवारण हेतु प्रभावी व्यवस्था स्थापित करने के लिए माननीय मुख्यमंत्री, बिहार द्वारा “जनता के दरबार में मुख्यमंत्री” कार्यक्रम को प्रारंभ किया जा रहा है | \n" +
                                  "\n" +
                                  "न्याय के साथ समावेशी विकास एवं सुशासन के सिद्धांत पर आधारित सरकार की नीतियों, कार्यक्रमों एवं योजनाओं के क्रियान्वयन का लाभ प्राप्त करने के सम्बन्ध में होने वाली समस्या के बारे में सीधे आम जनता से संवाद प्राप्त करना तथा उसका निवारण इस कार्यक्रम का मुख्य उद्देश्य है|   \n" +
                                  "\n" +
                                  "इस कार्यक्रम के तहत प्रत्येक महीने के प्रथम, द्वितीय एवं तृतीय सोमवार को क्रमशः विधि-व्यवस्था एवं प्रशासनिक विभाग, सामाजिक प्रक्षेत्र तथा आधारभूत संरचना अंतर्गत विभागों से सम्बंधित समस्याएँ सुनी जाती हैं|\n" +
                                  "\n" +
                                  "कार्यक्रम का आयोजन “जनता दरबार भवन”, मुख्यमंत्री सचिवालय, 4 देशरत्न मार्ग पटना में किया जाता है|\n",
                              style: TextStyle(
                                fontSize: 16,
                                //fontStyle: FontStyle.italic,
                                //fontWeight: FontWeight.bold,
                              ),
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
