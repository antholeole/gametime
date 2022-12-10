import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametime/pages/upload_film/cubit/upload_film_cubit.dart';

import '../../../upload_film/view/upload_film_modal.dart';

class FilmList extends StatelessWidget {
  const FilmList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      height: double.infinity,
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(children: [
          TextButton(
              onPressed: () => showDialog(
                    context: context,
                    builder: (_) => BlocProvider(
                        create: (_) => UploadFilmCubit(),
                        child: const UploadFilmModal()),
                  ),
              child: const Text('Upload'))
        ]),
      ),
    );
  }
}
