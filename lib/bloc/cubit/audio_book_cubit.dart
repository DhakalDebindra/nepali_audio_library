import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:nepali_audio_library/event/audio_library_event.dart';
import 'package:nepali_audio_library/model/audio_book.dart';
import 'package:nepali_audio_library/data/repository/audio_book_repository.dart';

part 'audio_book_cubit_state.dart';

class AudioBookCubit extends Cubit<AudioBookCubitState> {
  final AudioBookRepository audioBookRepository;

  AudioBookCubit({required this.audioBookRepository})
      : super(AudioBookInitial()) {
    onLoadAudioBooks(LoadAudioLibraryEvent());
  }

  Future<void> onLoadAudioBooks(AudioLibraryEvent event) async {
    if (event is LoadAudioLibraryEvent) {
      try {
        emit(LoadingAudioBookState());
        final audioBooks = audioBookRepository.getAllAudioBooks();
        emit(LoadedAudioBookState(audioBooks));
      } catch (e) {
        emit(LoadAudioBookError());
      }
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
