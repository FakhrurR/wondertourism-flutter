
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wondertourism/models/album.dart';
import 'package:wondertourism/models/route_passing.dart';
import 'package:wondertourism/screens/location_detail/image_banner.dart';
import 'package:wondertourism/service/apiService.dart';
import 'package:wondertourism/style.dart';
import '../../../app.dart';
import '../../../models/location.dart';
import 'package:flutter/foundation.dart';

class Locations extends StatefulWidget {

  Locations({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LocationViewState();
  }

}

class LocationViewState extends State<Locations> {

  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = ApiService().fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final locations = Location.fetchAll();

    const boxConstraints = BoxConstraints.expand(
        height: 50.0,
    );
    
    futureAlbum.then((value) => debugPrint(value.id.toString()));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wonder Tourism'),
      ),
      body: FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
                children: locations
                  .map((location) => GestureDetector(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        ImageBanner(location.imagePath),
                        Container(
                          alignment: Alignment.bottomLeft,
                          constraints: boxConstraints,
                          decoration: const BoxDecoration(color: Colors.black54),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                                location.name, 
                                style: const TextStyle(
                                  fontSize: 25, 
                                  color: Colors.white, 
                                  fontFamily: FontNameDefault,
                                  fontWeight: FontWeight.w500
                                )
                              )
                          ),
                        )
                    ]),
                    onTap: () => _onLocationTap(context, location.id),
                  ))
                  .toList(),

              );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            return Container(
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            );
          }
        },
      )
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: RoutePassing(locationID));
  }
}