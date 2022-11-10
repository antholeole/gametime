import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gametime/router/router.gr.dart';

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
              onPressed: () => AutoRouter.of(context).push(
                    const UploadFilmModal(),
                  ),
              child: const Text('Upload'))
        ]),
      ),
    );
  }
}
