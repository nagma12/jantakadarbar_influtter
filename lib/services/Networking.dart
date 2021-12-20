import 'package:flutter/material.dart';
import 'package:jantakadarbar_influtter/Model/District.dart';
import 'package:jantakadarbar_influtter/services/ApiClient.dart';
import 'package:jantakadarbar_influtter/services/AppConstants.dart';
import 'package:xml/xml.dart'as xml;

class NetworkHelper {

  Future <List<dist>> getDistrictsFromXML()  async {

    var rawXmlResponse = await ApiClient.getSoapRequest(AppConstants.DISTRICT_LIST);

    xml.XmlDocument parsedXml = xml.XmlDocument.parse(rawXmlResponse);
    var elements = parsedXml.findAllElements("dist");

    return  elements.map((element){
      return dist(element.findElements("DistCode").first.text,
          element.findElements("DistName").first.text,
          element.findElements("DistNameHN").first.text);
      }).toList();
  }
}