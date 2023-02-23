part of 'audio_book_cubit.dart';

@immutable
abstract class AudioBookCubitState {}

class AudioBookInitial extends AudioBookCubitState {}

class LoadingAudioBookState extends AudioBookCubitState {}

class LoadedAudioBookState extends AudioBookCubitState {
  final List<AudioBook> audioBooks;
  LoadedAudioBookState(this.audioBooks);
}

class LoadAudioBookError extends AudioBookCubitState {}
