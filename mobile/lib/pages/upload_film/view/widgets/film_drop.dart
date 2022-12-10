import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametime/theme/theme.dart';

import '../../../../theme/button.dart';
import '../../cubit/upload_film_cubit.dart';

class FilmDrop extends StatelessWidget {
  final bool dragging;

  const FilmDrop({
    super.key,
    this.dragging = false,
  });

  @override
  Widget build(BuildContext context) {
    return DropTarget(
      onDragEntered: (_) => context.read<UploadFilmCubit>().startDrag(),
      onDragDone: (dragDone) => context.read<UploadFilmCubit>().upload(
            dragDone.files.map((e) => e.path).toList(),
          ),
      onDragExited: (_) => context.read<UploadFilmCubit>().cancel(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: const Color.fromARGB(12, 0, 0, 0),
          border: Border.all(
            color: Colors.black12,
            width: 1.2,
          ),
        ),
        width: 400,
        height: 300,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dragging
                ? const [
                    Center(
                      child: Text('Drop Here!'),
                    )
                  ]
                : [
                    const Icon(Icons.file_upload),
                    const Text("Drop Film Here"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 1,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: borderRadius,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("OR"),
                          ),
                          Container(
                            height: 1,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: borderRadius,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Button(
                      text: "Browse Files",
                      onPressed: context.read<UploadFilmCubit>().pickFile,
                    )
                  ]),
      ),
    );
  }
}
