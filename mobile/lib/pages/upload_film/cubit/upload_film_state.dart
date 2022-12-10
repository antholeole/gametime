part of 'upload_film_cubit.dart';

@freezed
class UploadFilmState with _$UploadFilmState {
  const UploadFilmState._();

  const factory UploadFilmState.prompt({
    Exception? exception,
  }) = _UploadFilmStatePrompt;

  const factory UploadFilmState.drag({Exception? exception}) =
      _UploadFilmStateDrag;

  const factory UploadFilmState.withFilm() = _UploadFilmStateWithFilm;

  Exception? get exception => whenOrNull<Exception?>(
        prompt: (e) => e,
        drag: (e) => e,
      );
}
