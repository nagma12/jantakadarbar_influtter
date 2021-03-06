import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart'as xml;

import 'AppConstants.dart';

class ApiClient{

  static String startEnvelope = '''<?xml version="1.0" encoding="utf-8"?>
    <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
      <soap:Body>
    ''';

  static String endEnvelope = '''
  </soap:Body>
    </soap:Envelope>
  ''';

  static String createRequestBody(Map value){
    String param = "";
    value.forEach((key, value) {
      param += '<${key}>${value}</${key}>';
    });
    return param;
  }

  static Future<String> getSoapRequest(String method) async {
    Uri url = Uri.parse(AppConstants.BASE_URL+'/'+method);
    String requestBody = startEnvelope + '<' + method + 'xmlns="${AppConstants.URL_NAMESPACE}" />' + endEnvelope;

    http.Response response = await http.post(
        url,
        headers: {
          "Content-Type": "text/xml; charset=utf-8",
          "SOAPAction": AppConstants.URL_NAMESPACE + method,
          "Host": AppConstants.URL_HOST
        },
        body: requestBody);

    return await response.body;
  }

  static Future<String> postSoapRequest(String method, Map param) async {
    Uri url = Uri.parse(AppConstants.BASE_URL+'?op='+method);

    String body = '${startEnvelope}<${method} xmlns="${AppConstants.URL_NAMESPACE}">${createRequestBody(param)}</${method}>${endEnvelope}';

    print(body);
    http.Response response = await http.post(
        url,
        headers: {
          "Content-Type": "text/xml; charset=utf-8",
          "SOAPAction": AppConstants.URL_NAMESPACE + method,
          "Host": AppConstants.URL_HOST
        },
        body: utf8.encode(body));

    return await response.body;
  }
}