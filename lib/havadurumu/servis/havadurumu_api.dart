import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:cook/havadurumu/havadurumu_model/weather_models.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentweather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=f582f26e5db4b539182296bc172ef66d&units=metric");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityname);
    return Weather.fromJson(body);
  }
}
