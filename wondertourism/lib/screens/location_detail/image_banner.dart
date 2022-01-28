import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String assetsUrl;

  ImageBanner(this.assetsUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const boxConstraints = BoxConstraints.expand(
        height: 200.0,
    );

    return Container(
      constraints: boxConstraints,
      decoration: const BoxDecoration(color: Colors.grey),
      child: Image.asset(
        assetsUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  
}