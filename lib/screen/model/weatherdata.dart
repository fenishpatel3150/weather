


class WeatherModel
{

  late  CurrentLocationModel currentLocationModel;
  late LocationModel locationModel;

  WeatherModel({
    required this.locationModel,
    required this.currentLocationModel,
});
  
  factory WeatherModel.fromJson(Map json)
  {
    return WeatherModel(
      locationModel: json['locationModel'],
      currentLocationModel: json['currentLocationModel'],
    );
  }


}

class LocationModel {

  String? name;
  String? region;
  String? country;
  String? tz_id;
  double ? lat;
  double ? lon;
  int? localtime_epoch;
  int? localtime;

  LocationModel({
    this.name,
    this.region,
    this.country,
    this.tz_id,
    this.lat,
    this.lon,
    this.localtime_epoch,
    this.localtime,
  });

  factory LocationModel.fromjson(Map json)
  {
    return LocationModel(
      country: json['country'],
      name: json['name'],
      region: json['region'],
      tz_id: json['tz_id'],
      lat: json['lat'],
      lon: json['lon'],
      localtime_epoch: json['localtime_epoch'],
      localtime: json['localtime'],
    );
  }
}

class CurrentLocationModel {
  int ? last_updated_epoch;
  String? last_updated;
  double ? temp_c;
  double?temp_f;
  int ?is_day;
  double?wind_mph;
  double?wind_kph;
  double?wind_degree;
  String? wind_dir;
  double?pressure_mb;
  double?pressure_in;
  double?precip_mm;
  double?precip_in;
  int ?humidity;
  int?cloud;
  double?feelslike_c;
  double?feelslike_f;
  double?windchill_c;
  double?windchill_f;
  double?heatindex_c;
  double?heatindex_f;
  double?dewpoint_c;
  double?dewpoint_f;
  double?vis_km;
  double?vis_miles;
  double?uv;
  double?gust_mph;
  double?gust_kph;


  CurrentLocationModel({
    this.cloud,
    this.dewpoint_c,
    this.dewpoint_f,
    this.feelslike_c,
    this.feelslike_f,
    this.gust_kph,
    this.gust_mph,
    this.heatindex_c,
    this.heatindex_f,
    this.humidity,
    this.is_day,
    this.last_updated,
    this.last_updated_epoch,
    this.precip_in,
    this.precip_mm,
    this.pressure_in,
    this.pressure_mb,
    this.temp_c,
    this.temp_f,
    this.uv,
    this.vis_km,
    this.vis_miles,
    this.wind_degree,
    this.wind_dir,
    this.wind_kph,
    this.wind_mph,
    this.windchill_c,
    this.windchill_f,
  });


  factory CurrentLocationModel.fromJson(Map json)
  {
    return CurrentLocationModel(
      cloud: json['cloud'],
      dewpoint_c: json['dewpoint_c'],
      dewpoint_f: json['dewpoint_f'],
      feelslike_c: json['feelslike_c'],
      feelslike_f: json['feelslike_f'],
      gust_kph: json['gust_kph'],
      gust_mph: json['gust_mph'],
      heatindex_c: json['heatindex_c'],
      heatindex_f: json['heatindex_f'],
      humidity: json['humidity'],
      is_day: json['is_day'],
      last_updated: json['last_updated'],
      last_updated_epoch: json['last_updated_epoch'],
      precip_in: json['precip_in'],
      precip_mm: json['precip_mm'],
      pressure_in: json['pressure_in'],
       pressure_mb: json['pressure_mb'],
      temp_c: json['temp_c'],
      temp_f: json['temp_f'],
      uv: json['uv'],
      vis_km: json['vis_km'],
      vis_miles: json['vis_miles'],
      wind_degree: json['wind_degree'],
      wind_dir: json['wind_dir'],
      wind_kph: json[''],
      wind_mph: json['wind_mph'],
      windchill_c: json['windchill_c'],
      windchill_f: json['windchill_f'],
    );
  }


}


class ConditionModel {

  String? text;
  String? icon;
  int? code;


  ConditionModel({
    this.text,
    this.icon,
    this.code,
  });


  factory ConditionModel.fromjson(Map json)
  {
    return ConditionModel(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }


}
