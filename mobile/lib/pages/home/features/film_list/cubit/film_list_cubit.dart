import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametime/data/film.dart';
import 'package:gametime/pages/home/features/film_list/data/film_upload_payload.dart';
import 'package:gametime/register_services.dart';
import 'package:gql_client/gql_client.dart';
import 'package:graphql/client.dart';
import 'package:gametime/pages/home/features/film_list/queries/upload_film.graphql.dart';

part 'film_list_state.dart';
part 'film_list_cubit.freezed.dart';

class FilmListCubit extends Cubit<FilmListState> {
  final GraphQLClient _gqlClient = getIt<GQLClient>();

  FilmListCubit() : super(const FilmListState.loading());

  Future<void> upload(FilmUploadPayload payload) async {
    final resp = await _gqlClient.mutate$UploadFilm(
      Options$Mutation$UploadFilm(
        variables: Variables$Mutation$UploadFilm(
          name: payload.name,
          comment: payload.description,
        ),
      ),
    );

    if (resp.hasException) {
      emit(FilmListState.withFilm(
        film: state.film ?? [],
        exception: resp.exception!,
      ));
      return;
    }
  }
}
