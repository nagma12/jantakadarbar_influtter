import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jantakadarbar_influtter/Model/District.dart';
import 'package:xml/xml.dart'as xml;


var url = Uri.parse('https://jkdmm.bih.nic.in/JantaDarbarNewWebService.asmx/getDistrictList');

class NetworkHelper {


  Future <List<dist>> getDistrictsFromXML(BuildContext context)  async {
    var envelope = '''
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <getDistrictList xmlns="https://jkdmm.bih.nic.in/" />
  </soap:Body>
</soap:Envelope>
''';

    http.Response response = await http.post(
      url,
      headers: {
        "Content-Type": "text/xml; charset=utf-8",
        "SOAPAction": "https://jkdmm.bih.nic.in/getDistrictList",
        "Host": "jkdmm.bih.nic.in"
        //"Accept": "text/xml"
      },
        body: envelope);

    print(response.body);

    var rawXmlResponse = await response.body;
    /*var root = xml.XmlDocument.parse(rawXmlResponse).getElement('DistCode');
    var rootArrayOfDist = root!
        .findElements('dist')
        .map<dist>((e) => dist.fromElement(e))
        .toList();

    print(rootArrayOfDist);*/

// Use the xml package's 'parse' method to parse the response.
    xml.XmlDocument parsedXml = xml.XmlDocument.parse(rawXmlResponse);
    var elements = parsedXml.findAllElements("dist");
    //var elements = parsedXml.getElement("ArrayOfDist");
    print('hi1');
    //print(parsedXml);



    //var response = await Http.get(url);
    //var raw = xml.XmlDocument.parse(response.body);
    print('hi2');
    //print(dist.fromElement(elements!));


      return  elements.map((element){
        return dist(element.findElements("DistCode").first.text,
            element.findElements("DistName").first.text,
            element.findElements("DistNameHN").first.text);


      }).toList();




    //print("DATAResult=" + response.body);

    //print("hi:" );
    //print(elements.map((element){ dist(element.findElements("DistCode").first.text,
        //element.findElements("DistName").first.text,
       // element.findElements("DistNameHN").first.text);

    //}).toList()
    //);
    //var data = dist();
    //print(data.runtimeType);


}
}