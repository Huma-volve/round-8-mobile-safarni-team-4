import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/gallary/gallary_state.dart';

class GallaryCubit extends Cubit<GalleryState> {
  GallaryCubit() : super(GalleryInitial());

  final List<File> _images = [];
  List<File> get images => List.unmodifiable(_images);
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? pickedImage = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedImage != null) {
      addImage(File(pickedImage.path));
    }
  }

  void addImage(File image) {
    _images.add(image);
    emit(GalleryUpdated(images: images));
  }

  void removeImage(int index) {
    _images.removeAt(index);
    emit(GalleryUpdated(images: images));
  }

  void selectImageForDelete(int index) {
    if (state is GalleryUpdated) {
      final currentState = state as GalleryUpdated;
      emit(currentState.copyWith(selectedIndexForDelete: index));
    }
  }

  void clearSelection() {
    print('clear selection ');

    if (state is GalleryUpdated) {
      emit((state as GalleryUpdated).copyWith(
        clearSelection: true
        ));
    }
  }
}
