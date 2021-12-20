import 'package:flutter/material.dart';
import 'dart:async';
import 'package:jantakadarbar_influtter/Screens/activity_main_page.dart';
import 'package:jantakadarbar_influtter/services/Networking.dart';
import 'package:jantakadarbar_influtter/Model/District.dart';

class DistrictScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DistrictScreenState();
  }
}

class _DistrictScreenState extends State<DistrictScreen> {
  @override
  void initState() {
    super.initState();
    // var data =  NetworkHelper().getDistrictsFromXML();
    // print("data");
    // print(data);
    
    var blocks = NetworkHelper().getBlockList("209");
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
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          child: FutureBuilder(
                            future: NetworkHelper().getDistrictsFromXML(),builder : (context, snapshot)
                          {
                            if (snapshot.hasData){
                              //List<dist> _dist = snapshot.data ;
                              var _dist = (snapshot.data as List<dist>);
                              return ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  physics: ScrollPhysics(),
                                  itemCount: _dist.length,
                                  itemBuilder: (context,index){
                                    return ListTile(
                                      title: Text(_dist[index].DistCode),
                                      subtitle: Text(_dist[index].DistName),
                                      trailing : Text(_dist[index].DistNameHN),
                                    );
                                  });
                            }
                            else{
                              return Center(child: CircularProgressIndicator(),);
                            }
                          },

                          )

                      ),





                      //TextField nearly at bottom
                    ],
                  ),
                ),
              ),


            ],
          ),
        ));
  }
}
