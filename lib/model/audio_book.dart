// ignore_for_file: public_member_api_docs, sort_constructors_first
class AudioBook {
  final int _bookId;
  final String _bookTitle;
  final String _bookLabel;

  AudioBook(
    this._bookId,
    this._bookTitle,
    this._bookLabel,
  );

  int get bookId => _bookId;

  String get bookTitle => _bookTitle;

  String get bookLabel => _bookLabel;

  @override
  bool operator ==(covariant AudioBook other) {
    if (identical(this, other)) return true;

    return other._bookId == _bookId &&
        other._bookTitle == _bookTitle &&
        other._bookLabel == _bookLabel;
  }

  @override
  int get hashCode =>
      _bookId.hashCode ^ _bookTitle.hashCode ^ _bookLabel.hashCode;
}
