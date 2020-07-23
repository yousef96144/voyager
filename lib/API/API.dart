import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';


class CallApi{

  Future<dynamic> postData(data,mainUrl,_setHeaders) async{
   print("here is postdata func");
    String url = 'http://10.0.2.2:8000/api/'+ mainUrl;
    var bodyEncoded = json.encode(data);
    var response = await http.post(url, body: bodyEncoded , headers: _setHeaders,);
    print("before sending response \n");
    final String res = response.body;
    print("after sending response ");

    return res;
//    return  await http.post(
//        url,
//        body: jsonEncode(data),
//        headers: _setHeaders()
//
//        );
  }
  Future<dynamic> getData(mainUrl) async{
    print("here is getdata func");
    String url = 'http://10.0.2.2:8000/api/'+ mainUrl;
    var response = await http.get(url);
    print("before sending response \n");
    final String res = response.body;
    print("after sending response ");

    return res;
//    return  await http.post(
//        url,
//        body: jsonEncode(data),
//        headers: _setHeaders()
//
//        );
  }
}