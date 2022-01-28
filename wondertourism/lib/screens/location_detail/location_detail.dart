import 'package:flutter/material.dart';
import 'package:wondertourism/models/route_passing.dart';
import 'package:wondertourism/screens/location_detail/text_section.dart';
import 'image_banner.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  // final int id;

  const LocationDetail({Key? key}) : super(key: key);
  // LocationDetail(this.locationID);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as RoutePassing;
    final location = Location.fetchById(args.id);

    return Scaffold(
      appBar: AppBar(
        // title: const Text('Wonder Tourism'),
        title: Text(location!.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath), ...textSection(location),
      ])
    ); 
  }

  List<Widget> textSection (Location location) {
    return location.facts.map((e) => TextSection(e.title, e.text)).toList();
  }
}