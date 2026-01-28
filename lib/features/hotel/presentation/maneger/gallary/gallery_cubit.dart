import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/gallery_image_type/galler_image_type.dart' hide ImageSource;
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/gallary/gallary_state.dart';

class GallaryCubit extends Cubit<GalleryState> {
  GallaryCubit() : super(GalleryInitial());

  final List<GalleryImage> _images = [];   // List<GalleryImage>  image from gallery and api
  List<File> get images => List.unmodifiable(_images);
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? pickedImage = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedImage != null) {
      addLocalImages(File(pickedImage.path));  // Convert XFile to File and add to local images
    }
  }
void setApiImages(List<String> image){
  _images.clear();
  _images.addAll(image.map((e) => GalleryImage.api(e)));
  emit(GalleryUpdated(images: List.from(_images)));
}
void addLocalImages(File image){
  
  _images.add(GalleryImage.local(image));
  emit(GalleryUpdated(images: List.from(_images)));
}
  // void addImage(File image) {
  //   _images.add();
  //   emit(GalleryUpdated(images: images));
  // }

  void removeImage(int index) {
    _images.removeAt(index);
    emit(GalleryUpdated(images: List.from(_images)));
  }

  // void selectImageForDelete(int index) {
  //   if (state is GalleryUpdated) {
  //     final currentState = state as GalleryUpdated;
  //     emit(currentState.copyWith(selectedIndexForDelete: index));
  //   }
  // }
 void selectImageForDelete(int index) {
    emit((state as GalleryUpdated)
        .copyWith(selectedIndexForDelete: index));
  }
  // void clearSelection() {
  //   print('clear selection ');

  //   if (state is GalleryUpdated) {
  //     emit((state as GalleryUpdated).copyWith(
  //       clearSelection: true
  //       ));
  //   }
  // }
  void clearSelection() {
    emit((state as GalleryUpdated)
        .copyWith(selectedIndexForDelete: null));
  }
}
