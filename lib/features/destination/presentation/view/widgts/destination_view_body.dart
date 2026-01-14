import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/review_card.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/scetion_rate_city.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/section_des_image.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/section_info.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/section_tour_gallery.dart';
import '../../managers/destination_cubit/destination_cubit.dart';
import 'activited_card.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DestinationCubit, DestinationState>(
      builder: (context, state) {
        if (state is DestinationSuccess) {
          final tour = state.tour;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // الصورة العلوية تأخذ أول صورة من الـ API
                SectionDesImage(image: tour.images[0]),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // التقييم الديناميكي
                      section_rate_city(
                        rating: tour.ratingAverage.toDouble(),
                        reviewCount: tour.reviewsCount,
                      ),
                      const SizedBox(height: 8),

                      Text(tour.title,
                          style: AppThemes.light.textTheme.titleMedium!.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.mainColorLight[100])),
                      const SizedBox(height: 8),

                      Text("${tour.duration} Days",
                          style: AppThemes.light.textTheme.titleMedium!.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black[70])),

                      Text(tour.visitSeason,
                          style: AppThemes.light.textTheme.titleMedium!.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black[70])),

                      const SizedBox(height: 20),
                      Text("Top Activities",
                          style: AppThemes.light.textTheme.titleMedium!.copyWith(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.mainColorLight[100])),
                      const SizedBox(height: 10),

                      // الأنشطة
                      SizedBox(
                        height: 140.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tour.activities.length,
                          itemBuilder: (context, index) => ActivityCard(
                            title: tour.activities[index],
                            imageUrl: "", // الـ Card سيهندل الأيقونة الافتراضية
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      Text("Best Time to Visit",
                          style: AppThemes.light.textTheme.titleMedium!.copyWith(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.mainColorLight[100])),
                      const SizedBox(height: 10),

                      CustomInfoContainer(
                        child: Text(
                            "${tour.visitSeason}: ${tour.recommendation}",
                            style: AppThemes.light.textTheme.titleMedium!.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black[70])),
                      ),

                      const SizedBox(height: 25),

                      // قسم الجاليري المطور (عرض المزيد + إضافة صورة)
                      TourGallerySection(images: tour.images),

                      const SizedBox(height: 20),
                      Text("Reviews",
                          style: AppThemes.light.textTheme.titleMedium!.copyWith(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.mainColorLight[100])),
                      const SizedBox(height: 10),

                      // عرض المراجعات
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: tour.reviews.length,
                        itemBuilder: (context, index) {
                          final review = tour.reviews[index];
                          return ReviewCard(
                            name: review.user,
                            date: "Recently",
                            comment: review.comment,
                            avatar: "https://i.pravatar.cc/150?u=${review.user}",
                          );
                        },
                      ),

                      const SizedBox(height: 16),

                      // زر See More للمراجعات
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: const Color(0xff1E429F))
                          ),
                          child: Center(
                            child: Text("See More Reviews",
                                style: AppThemes.light.textTheme.titleMedium!.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff1E429F))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (state is DestinationError) {
          return Center(child: Text(state.errMess));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class SctionSeeMore extends StatelessWidget {
  const SctionSeeMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Gallery (150)",
            style: AppThemes.light.textTheme.titleMedium!.copyWith(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.mainColorLight[100])),
        const Spacer(),
        InkWell(
          onTap: (){},
          child: Text("See more",
              style: AppThemes.light.textTheme.titleMedium!.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainColorLight[70])),
        ),
      ],
    );
  }
}

class section_rate_city extends StatelessWidget {
  const section_rate_city({
    super.key, required this.reviewCount, required this.rating,
  });
  final int reviewCount;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("City Breaks",
            style: AppThemes.light.textTheme.titleMedium!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black[70])),
        const Spacer(),
        Wrap(
          children: List.generate(5, (index) {
            if (index < rating.floor()) {
              return Icon(Icons.star, color: Colors.amber, size: 14.h);
            } else if (index < rating) {
              return Icon(Icons.star_half, color: Colors.amber, size: 14.h);
            } else {
              return Icon(Icons.star_border, color: Colors.amber, size: 14.h);
            }
          }),
        ),
        const SizedBox(width: 5),
        Text("$rating ($reviewCount)",   style: AppThemes.light.textTheme.titleMedium!.copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.black[70])),
      ],
    );
  }
}