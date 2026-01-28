import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/gallary/gallary_state.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/gallary/gallery_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/gridview_add_item.dart';

class GridViewAddItemListView extends StatelessWidget {
  const GridViewAddItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GallaryCubit, GalleryState>(
      builder: (context, state) {
        if (state is GalleryUpdated) {
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return GridviewAddItem(
                image: state.images[index],
                showDelete: state.selectedIndexForDelete == index,
                onLongPress: () {
                  context.read<GallaryCubit>().selectImageForDelete(index);
                },
                onTap: () {
                  print('Image tapped');
                  context.read<GallaryCubit>().clearSelection();
                },

                onRemove: () {
                  context.read<GallaryCubit>().removeImage(index);
                },
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }
}
