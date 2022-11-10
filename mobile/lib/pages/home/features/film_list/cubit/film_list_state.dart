part of 'film_list_cubit.dart';

@freezed
class FilmListState with _$FilmListState {
  const FilmListState._();

  const factory FilmListState.loading() = _FilmListStateLoading;
  const factory FilmListState.withFilm({
    required List<Film> film,
    Exception? exception,
  }) = _FilmListStateWithFilm;

  List<Film>? get film => when(
        loading: () => null,
        withFilm: (film, exception) => film,
      );
}
