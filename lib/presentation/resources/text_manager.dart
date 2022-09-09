import 'package:intl/intl.dart';

class TextManager {
  static const String onBoardingBodyTextOne =
      'Welcome to the wonderful weather application';
  static const String onBoardingBodyTextTwo =
      'This app determines the weather using your location and accurate temperatures';
  static const String onBoardingTitleTextOne = 'The Weather APP';
  static const String onBoardingTitleTextTwo =
      'I wish you a great use of the application';

  static const String started = "Get Started";
  static const String signup = "Sign Up";
  static const String login = "login";
  static const String appName = 'WeatherApp';

  /// app route
  static const String noRouteFound = 'No Route Found';

  /// Date-time
  static const String sunrise = 'Sunrise';
  static const String sunset = 'Sunset';
  static String dayNow = DateFormat('E').format(DateTime.now());
  static String hourNow =
      DateFormat('h:mm a').format(DateTime.now()).toLowerCase();

  /// info
  static const String uvIndex = 'UV index';
  static const String wind = 'Wind';
  static const String humidity = 'Humidity';

  static const String high = 'High';
  static const String low = 'Low';

  static const String windSpeed = '23 km/h';
  static const String humidityPercent = '31%';

  /// symbols
  static const String symbolDegree = '°';
}

// you will edit here
