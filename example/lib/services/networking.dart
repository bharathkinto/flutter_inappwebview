import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const kApiKey = 'd52793abc4496316267cae2e8b2a2bc2';

class NetworkData {
  NetworkData(this.latitude, this.longtitude);
  final latitude;
  final longtitude;
  Future returnInfo() async {
    try {
      http.Response response = await http.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longtitude&appid=$kApiKey&units=metric');
      var body = response.body;
      var des = jsonDecode(body)['weather'][0]['main'];
      return jsonDecode(body);
    } catch (e) {
      print('something went wrong: $e');
    }
  }
}

// from the sample api, change samples to api, change appid and lat and long to your values

//void getWeatherChallenge()async{
//  try{
//    http.Response res1= await http.get(
//        'https://samples.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$kApiKey');
//    var res2=res1.body;
//    var nameOfCity= jsonDecode(res2)['name'];
//    var id =jsonDecode(res2)['weather'][0]['id'];
//    print("$nameOfCity  $id");
//  } catch(e){print('something went wrong:$e');}}
