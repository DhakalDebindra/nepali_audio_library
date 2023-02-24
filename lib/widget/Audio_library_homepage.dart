import 'package:flutter/material.dart';
import 'load_audio_book_screen.dart';
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
