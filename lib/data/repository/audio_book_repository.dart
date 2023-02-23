// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:nepali_audio_library/model/audio_book.dart';

abstract class AudioLibraryRepository {}

class AudioBookRepository extends AudioLibraryRepository {
  late final List<AudioBook> _audioBooks = [];

  List<AudioBook> getAllAudioBooks() {
    AudioBook audioBook_1 =
        AudioBook(1, "Major English First Paper", "BA Second Year");
    _audioBooks.add(audioBook_1);
    AudioBook audioBook_2 =
        AudioBook(2, "Major English Second Paper", "BA Second Year");
    _audioBooks.add(audioBook_2);

    return _audioBooks;
  }
}
