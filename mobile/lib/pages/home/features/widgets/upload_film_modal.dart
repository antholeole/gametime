import 'package:flutter/material.dart';

class UploadFilmModal extends StatefulWidget {
  const UploadFilmModal({super.key});

  @override
  State<UploadFilmModal> createState() => _UploadFilmModalState();
}

class _UploadFilmModalState extends State<UploadFilmModal> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}
