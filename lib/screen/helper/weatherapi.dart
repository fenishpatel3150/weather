import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather/screen/model/weatherdata.dart';


class ApiService {

  callApi(String url)
  async {

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('False');
    }


  }



}