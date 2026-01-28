
import 'dart:io';

enum ImageType { api, local }

class GalleryImage {
  final String? imageUrl;
  final File? file;
  final ImageType type;

  GalleryImage.api(this.imageUrl)
      : file = null,
        type = ImageType.api;

  GalleryImage.local(this.file)
      : imageUrl = null,
        type = ImageType.local;
}
abstract class ImageSource {
  ImageSource();

}
// class ApiImageSource extends ImageSource {
//   final String imageUrl;

//   ApiImageSource(this.imageUrl);
// }
// class LocalImageSource extends ImageSource {
//   final File file;

//   LocalImageSource(this.file);
// }