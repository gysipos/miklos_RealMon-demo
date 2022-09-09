import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import 'MainAppWidget.dart';

///Usually it's recommended to implement some kind of folder structure
///so as the project grows bigger than 5 files it remains manageable
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        // for Win
        dragDevices: {
          ui.PointerDeviceKind.mouse,
          ui.PointerDeviceKind.touch,
          ui.PointerDeviceKind.stylus,
          ui.PointerDeviceKind.unknown
        },
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MainAppWidget(),
    );
  }
}
