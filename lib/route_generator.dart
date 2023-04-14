import 'package:flutter/material.dart';
import 'package:horoscope_app/horoscope_details.dart';
import 'package:horoscope_app/horoscope_list.dart';
import 'package:horoscope_app/models/horoscope.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => HoroscopeList(),
        );

      case "horoscopeDetails":
        final Horoscope selected = settings.arguments as Horoscope;
        return MaterialPageRoute(
          builder: (context) => HoroscopeDetails(selectedHoroscope: selected),
        );
    }
  }
}
