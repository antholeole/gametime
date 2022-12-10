import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametime/pages/upload_film/cubit/upload_film_cubit.dart';
import 'package:gametime/pages/upload_film/view/widgets/film_drop.dart';
import 'package:gametime/theme/text.dart';
import 'package:gametime/theme/theme.dart';

class UploadFilmModal extends StatefulWidget {
  const UploadFilmModal({super.key});

  @override
  State<UploadFilmModal> createState() => _UploadFilmModalState();
}

class _UploadFilmModalState extends State<UploadFilmModal> {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Theme.of(context).dialogBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Upload Film",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              if (context.watch<UploadFilmCubit>().state.exception != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    context.read<UploadFilmCubit>().state.exception.toString(),
                    style: errorText,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 18.0,
                ),
                child: context.watch<UploadFilmCubit>().state.when(
                    prompt: (_) => const FilmDrop(),
                    drag: (_) => const FilmDrop(dragging: true),
                    withFilm: () => Container()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
