import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiSarvice {
  Future<String?> getData(String cityName) async {
    String apidata =
        'https://api.weatherapi.com/v1/forecast.json?key=9885c92eb56e4e0596d103301241906&q=$cityName}';
    Uri uri = Uri.parse(apidata);
    Response response = await http.get(uri);
    if (response.statusCode == 200) {
      print('Api Called');
      return response.body;
    } else {
      return null;
    }
  }

  Future<String?> getSreachData(String cityName) async {
    String apidata =
        'https://api.weatherapi.com/v1/search.json?key=9885c92eb56e4e0596d103301241906&q=$cityName';
    Uri uri = Uri.parse(apidata);
    Response response = await http.get(uri);
    if (response.statusCode == 200) {
      print('Api Called');
      return response.body;
    } else {
      return null;
    }
  }
}

