import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/screens/component_gallery_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ComponentGalleryScreen(),
    );
  }
}
