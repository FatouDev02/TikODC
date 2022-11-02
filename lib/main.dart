import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tikodc/home.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Materialapp represente toute l'app
    return const MaterialApp(
      //nom de l'app pas le titre à afficher
      title: 'Flutter TikTok',
      //bande debug a ne pas afficher
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}
