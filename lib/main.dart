import 'package:flutter/material.dart';
import 'package:nepali_audio_library/load_audio_book_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

class AudioLibraryHomePage extends StatefulWidget {
  const AudioLibraryHomePage({required Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AudioLibraryHomePageState createState() => _AudioLibraryHomePageState();
}

class _AudioLibraryHomePageState extends State<AudioLibraryHomePage> {
  @override
  Widget build(BuildContext context) {
    print("Bibek");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Library Home Page'),
      ),
      body: LoadAudioBookScreen(),
    );
  }
}
