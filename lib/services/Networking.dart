import 'package:flutter/material.dart';
import 'package:jantakadarbar_influtter/Model/Block.dart';
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

  Future <List<Block>> getBlockList(String distCode) async {
    Map param = {"DistCode": distCode};
    var rawXmlResponse = await ApiClient.postSoapRequest(AppConstants.BLOCK_LIST, param);
    print(rawXmlResponse);

    xml.XmlDocument parsedXml = xml.XmlDocument.parse(rawXmlResponse);
    var elements = parsedXml.findAllElements("BlockList");

    return Block.fromElement(elements);
  }
}