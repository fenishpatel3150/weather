<h2 align = "center"> 1. Weather App </h2>


Creating a weather app in Flutter involves building a mobile application that can fetch and display weather data from a web API. Here’s a detailed description of the project:

### Overview
The weather app will provide users with current weather information based on their location or a specified city. It will feature a clean and intuitive user interface with real-time updates, displaying temperature, humidity, wind speed, weather conditions, and forecasts.

### Key Features
1. **Current Weather Information**: Displays the current temperature, weather condition (e.g., sunny, cloudy), humidity, wind speed, and other relevant data.
2. **Search Functionality**: Allows users to search for weather information by city name.
3. **Location-based Weather**: Uses device GPS to fetch weather data for the user's current location.
4. **Weather Forecast**: Provides a short-term weather forecast (e.g., for the next few days).
5. **Dynamic UI**: Changes background images or themes based on weather conditions (e.g., sunny, rainy, cloudy).
6. **Error Handling**: Displays appropriate error messages for network issues, incorrect city names, etc.
7. **Settings**: Allows users to switch between Celsius and Fahrenheit for temperature display.

### Technologies and Tools
- **Flutter**: Framework for building cross-platform mobile applications.
- **Dart**: Programming language used with Flutter.
- **Weather API**: A web API (e.g., OpenWeatherMap, WeatherAPI) to fetch weather data in JSON format.
- **HTTP Package**: To make network requests and handle API responses.
- **Location Package**: To access the device's GPS for location-based weather data.

### Project Structure
1. **Main.dart**: Entry point of the application.
2. **Models**: Defines data models for weather data.
3. **Services**: Contains code for making API calls and processing responses.
4. **Screens**: UI screens for displaying weather data, search functionality, and settings.
5. **Widgets**: Reusable UI components like weather cards, forecast lists, etc.

### Implementation Steps
1. **Setup Flutter Environment**: Install Flutter SDK and set up an IDE (e.g., Android Studio, VS Code).
2. **Create a New Flutter Project**: Use the `flutter create` command to create a new project.
3. **Add Dependencies**: Add necessary packages in `pubspec.yaml` (e.g., http, location, provider).
4. **Fetch Weather Data**: Write code to make API calls and parse JSON responses.
5. **Design UI**: Build the user interface using Flutter widgets and layout principles.
6. **Implement State Management**: Use state management techniques (e.g., Provider, Bloc) to manage app state.
7. **Handle Errors**: Implement error handling for network issues, invalid responses, etc.
8. **Testing**: Test the app on different devices and screen sizes.
9. **Deploy**: Build and deploy the app to the Google Play Store and Apple App Store.

### Example API Call
```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> fetchWeather(String city) async {
  final response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=YOUR_API_KEY'));
  
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load weather data');
  }
}
```

### Example UI Code
```dart
import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Current Temperature: 25°C'),
            Text('Weather: Sunny'),
            // Add more weather details here
          ],
        ),
      ),
    );
  }
}
```

This description provides a comprehensive overview and initial steps for creating a weather app in Flutter.






<img src = "https://github.com/fenishpatel3150/weather/assets/143187609/82f2e3f8-1366-4576-aba6-827813ca6ecc" width=22% height=35%>

<img src = "https://github.com/fenishpatel3150/weather/assets/143187609/d3bb88bd-e7ad-48fa-95f4-62ed006cf68f" width=22% height=35%>

<img src = "https://github.com/fenishpatel3150/weather/assets/143187609/257fe9d0-d1d0-4a1a-a897-64483a6c0b0b" width=22% height=35%>

<img src = "https://github.com/fenishpatel3150/weather/assets/143187609/410489ff-478b-451f-9fe7-d13e4a2deae0" width=22% height=35%>



https://github.com/fenishpatel3150/weather/assets/143187609/0e5c9176-3df5-4c31-935d-81d59f183949




