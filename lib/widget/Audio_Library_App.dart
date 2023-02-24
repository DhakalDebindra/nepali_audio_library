import 'package:flutter/material.dart';

import 'Audio_library_homepage.dart';

class AudioLibraryApp extends StatelessWidget {
  const AudioLibraryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Hell!!!");
    return MaterialApp(
      title: 'Audio Library App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AudioLibraryHomePage(key: UniqueKey()),
    );
  }
}
