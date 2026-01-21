import 'dart:io';
import 'package:equatable/equatable.dart';

abstract class GalleryState extends Equatable {
  const GalleryState();

  @override
  List<Object> get props => [];
}

class GalleryInitial extends GalleryState {}

class GalleryUpdated extends GalleryState {
  final int? selectedIndexForDelete;
  final List<File> images;
  const GalleryUpdated({required this.images, this.selectedIndexForDelete});

  @override
  List<Object> get props => [images, selectedIndexForDelete ?? -1];

  GalleryUpdated copyWith({
    final List<File>? images,
    final int? selectedIndexForDelete,
  }) => GalleryUpdated(
    images: images ?? this.images,
    selectedIndexForDelete:
        selectedIndexForDelete ?? this.selectedIndexForDelete,
  );
}
