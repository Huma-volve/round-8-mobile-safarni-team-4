import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/theme/app_theme.dart';

class TourGallerySection extends StatefulWidget {
  final List<String> images;
  const TourGallerySection({super.key, required this.images});

  @override
  State<TourGallerySection> createState() => _TourGallerySectionState();
}

class _TourGallerySectionState extends State<TourGallerySection> {
  bool isExpanded = false;
  late List<String> localImages; // قائمة الصور المحلية القابلة للتحديث

  @override
  void initState() {
    super.initState();
    // نضع الصور القادمة من الـ API في قائمة محليه لنتمكن من الإضافة عليها
    localImages = List.from(widget.images);
  }

  // دالة اختيار الصورة
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    // اختيار صورة من الاستوديو
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        // إضافة مسار الصورة المختارة للقائمة
        localImages.add(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // نستخدم localImages بدلاً من widget.images
    int displayCount = isExpanded ? localImages.length : (localImages.length > 4 ? 4 : localImages.length);

    return Column(
      children: [
        Row(
          children: [
            Text("Gallery (${localImages.length})",
                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainColorLight[100])),
            const Spacer(),
            if (localImages.length > 4)
              InkWell(
                onTap: () => setState(() => isExpanded = !isExpanded),
                child: Text(isExpanded ? "See less" : "See more",
                    style: AppThemes.light.textTheme.titleMedium!.copyWith(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mainColorLight[70])),
              ),
          ],
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: displayCount,
          itemBuilder: (context, index) {
            final imagePath = localImages[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              // نختبر إذا كانت الصورة من الإنترنت (http) أو من الجهاز (File)
              child: imagePath.startsWith('http')
                  ? CachedNetworkImage(
                imageUrl: imagePath,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(color: Colors.grey[200]),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )
                  : Image.file(
                File(imagePath), // نحتاج import 'dart:io';
                fit: BoxFit.cover,
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        // زر إضافة الصورة
        InkWell(
          onTap: _pickImage, // استدعاء دالة اختيار الصورة
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.camera_alt_rounded, color: AppColors.mainColorLight[70]),
              const SizedBox(width: 8),
              Text('Add Photo',
                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                  fontSize: 15.sp,
                  color: AppColors.mainColorLight[70],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}