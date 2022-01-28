import 'package:flutter/material.dart';
import 'package:wondertourism/models/route_passing.dart';
import 'package:wondertourism/screens/location_detail/location_detail.dart';
import 'screens/locations/locations.dart';
import 'style.dart';

const LocationsRoute = '/location';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Wonder Tourism',
      home: Locations(),
      // onGenerateRoute: _routes(),
      initialRoute: LocationsRoute,
      routes: {
        LocationsRoute: (context) => Locations(),
        LocationDetailRoute: (context) => const LocationDetail(),
      },
      theme: _theme(),
    );
  }

  // Map<String, StatelessWidget Function(dynamic context)> routesScreen = {
  //   LocationsRoute: (context) => Locations(),
  //   LocationDetailRoute: (context) => const LocationDetail(),
  // };

  RouteFactory _routes() {
    return (settings) {
      Widget screen;

      switch(settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = const LocationDetail();
          break;
        default: 
          return null;
      }

      return MaterialPageRoute(builder: (context) => screen);
    };
  }

  ThemeData _theme(){
    return ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: AppBarTextStyle,
          textTheme: TextTheme( bodyText1: Body1Style, headline5: AppBarTextStyle ),
        ),
      );
  }
}