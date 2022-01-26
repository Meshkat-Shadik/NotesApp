import 'package:freezed_annotation/freezed_annotation.dart';
part 'exceptions.freezed.dart';

@freezed
abstract class NoteFailure with _$NoteFailure {
  const factory NoteFailure.fetchFailure({
    @Default('Error fetching Notes') String description,
  }) = FetchNoteFailure;
  const factory NoteFailure.addFailure({
    @Default('Error adding Note') String description,
  }) = AddNoteFailure;
  const factory NoteFailure.removeFailure({
    @Default('Error removing Note') String description,
  }) = RemoveNoteFailure;
  const factory NoteFailure.editFailure({
    @Default('Error editing Note') String description,
  }) = EditNoteFailure;
}

class NoteException implements Exception {
  const NoteException({required this.failure});

  final NoteFailure failure;

  @override
  String toString() {
    return '''
Note Error: ${failure.toString()}
    ''';
  }
}
