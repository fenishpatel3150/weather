import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:weather/screen/helper/weatherapi.dart';

import '../model/weatherdata.dart';

class WeatherController extends ChangeNotifier
{

  List <WeatherModel> weatherData =[];

  List<WeatherModel>  get WeatherData => weatherData;

  WeatherController()
  {
      getDate();
  }


      Future<void>  getDate()
  async {
    String json = await ApiService().callApi('http://api.weatherapi.com/v1/current.json?key=ffe2b75e58e544fa9ff125903242406&q=surat&aqi=no');
    List data  = await jsonDecode(json);


    weatherData =data.map((e) => WeatherModel.fromJson(e)).toList();
    notifyListeners();

  }






}