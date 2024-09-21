import 'dart:io';

class FileNotFoundException implements Exception {
  @override
  String toString() =>
      'FileNotFoundException: File Not Found in the Specified Location';
}

void main() {
  try {
    print("Enter the path of the file: ");
    String? url = stdin.readLineSync();

    if (url == null || url.isEmpty) {
      throw FileNotFoundException();
    }

    File file = File(url);

    if (!file.existsSync()) {
      throw FileNotFoundException();
    }

    print("File found successfully at $url");
    var data = file.readAsStringSync();
    print(data);
  } on FileNotFoundException catch (e) {
    print(e);
  } on FileSystemException catch (e) {
    print("FileSystemException: ${e.message}");
  } catch (e) {
    print("An unknown error occurred: $e");
  }
}
