import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nepali_audio_library/bloc/cubit/audio_book_cubit.dart';
import 'package:nepali_audio_library/data/repository/audio_book_repository.dart';

class LoadAudioBookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AudioBookCubit>(
      create: (context) => AudioBookCubit(
        audioBookRepository: AudioBookRepository(),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: BlocConsumer<AudioBookCubit, AudioBookCubitState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is LoadingAudioBookState) {
                  return Center(
                    child: CircularProgressIndicator(
                      semanticsLabel: 'Books are loading',
                    ),
                  );
                } else if (state is LoadedAudioBookState) {
                  return createListView(state);
                } else if (state is LoadAudioBookError) {
                  return Center(
                    child: Text('No data'),
                  );
                }
                return Center(
                  child: Text('Unknown state'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  ListView createListView(LoadedAudioBookState state) {
    return ListView.builder(
      itemCount: state.audioBooks.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: Colors.black87,
          ),
          child: Card(
            child: ListTile(
              title: Text(
                state.audioBooks[index].bookTitle,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                state.audioBooks[index].bookLabel,
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You clicked on book ${index + 1}'),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
