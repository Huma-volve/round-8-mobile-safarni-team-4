import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/gallery_image_type/galler_image_type.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/room_detailes/rooms_data.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/gallary/gallary_state.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/gallary/gallery_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/grid_view_add_item_list_view.dart';

class GallerySection extends StatelessWidget {
    GallerySection({super.key , required this.data});

  final ImagePicker picker = ImagePicker();

   List<GalleryImage> images = [];
 final RoomsData data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GallaryCubit()..setApiImages(
        data.images ?? [],
      ),
      child: BlocBuilder<GallaryCubit, GalleryState>(
        builder: (context, state) {
          if (state is GalleryUpdated) {
            images = state.images;
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Row(
                children: [
                  Text(
                    "Gallery (${images.length})",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () async {
                      BlocProvider.of<GallaryCubit>(context).pickImage();
                    },
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.blue,
                      size: 18,
                    ),
                  ),
                  const Text(
                    "Add Photo",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              /// Grid
             const GridViewAddItemListView(),
            ],
          );
        },
      ),
    );
  }
}
