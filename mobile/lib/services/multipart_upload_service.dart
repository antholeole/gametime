import 'package:http/http.dart' as http;
import 'package:http_parser/src/media_type.dart';

import 'package:mime/mime.dart';

class MultipartUploadService {
  Future<void> multipartUpload(String filePath, String url) async {
    final String? mime = lookupMimeType(filePath);

    if (mime == null) {
      throw MultipartUploadNoFileException(filePath);
    }

    var request = http.MultipartRequest("PUT", Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath(
      'package',
      filePath,
      contentType: MediaType("blah", "blah"),
    ));
  }
}

class MultipartUploadServiceException implements Exception {}

class MultipartUploadNoFileException implements Exception {
  final String path;

  const MultipartUploadNoFileException(this.path);

  @override
  String toString() {
    return "Unable to find file $path";
  }
}
