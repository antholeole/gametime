import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametime/register_services.dart';
import 'package:mime/mime.dart';

part 'upload_film_state.dart';
part 'upload_film_cubit.freezed.dart';

class UploadFilmCubit extends Cubit<UploadFilmState> {
  static const List<String> _validMIMES = ["video/mp4"];

  final FilePicker _filePicker = getIt<FilePicker>();

  UploadFilmCubit() : super(const UploadFilmState.prompt());

  void startDrag() {
    emit(UploadFilmState.drag(exception: state.exception));
  }

  upload(List<String> files) {
    if (files.length != 1) {
      emit(UploadFilmState.prompt(exception: MoreThanOneFileException()));
      return;
    }

    final String? mime = lookupMimeType(files.first);

    if (!_validMIMES.contains(mime)) {
      emit(
        UploadFilmState.prompt(
          exception: InvalidMimeException(mime),
        ),
      );
      return;
    }
  }

  cancel() {
    emit(UploadFilmState.prompt(exception: state.exception));
  }

  Future<void> pickFile() async {
    FilePickerResult? result = await _filePicker.pickFiles(
      allowMultiple: false,
      type: FileType.video,
    );

    if (result != null) {
      upload([result.files.first.path!]);
    }
  }
}

class UploadFilmException implements Exception {}

class MoreThanOneFileException implements UploadFilmException {
  @override
  String toString() {
    return "More than one file uploaded; please only upload one file.";
  }
}

class InvalidMimeException implements UploadFilmException {
  final String? uploadedMIME;

  InvalidMimeException(this.uploadedMIME);

  @override
  String toString() {
    return "Invalid Mime type $uploadedMIME uploaded; please upload: ${UploadFilmCubit._validMIMES.join(", ")}";
  }
}
