import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/gallery_image_type/galler_image_type.dart';

abstract class GalleryState extends Equatable {
  const GalleryState();

  @override
  List<Object> get props => [];
}

class GalleryInitial extends GalleryState {}

class GalleryUpdated extends GalleryState {
  final int? selectedIndexForDelete;
  final List<GalleryImage> images;
  const GalleryUpdated({required this.images, this.selectedIndexForDelete});

  @override
  List<Object> get props => [images, selectedIndexForDelete ?? -1];

 GalleryUpdated copyWith({
  List<GalleryImage>? images,
  int? selectedIndexForDelete,
  bool clearSelection = false,
}) {
  return GalleryUpdated(
    images: images ?? this.images,
    selectedIndexForDelete:
        clearSelection ? null : selectedIndexForDelete ?? this.selectedIndexForDelete,
  );
}

}
