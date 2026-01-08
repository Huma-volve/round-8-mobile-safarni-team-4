import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/review_card.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/section_des_image.dart';
import 'package:round_8_mobile_safarni_team4/features/destination/presentation/view/widgts/section_info.dart';

import 'activited_card.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage({super.key});

 // حالة زر القلب
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // الجزء العلوي: الصورة والأزرار
            SectionDesImage(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  section_rate_city(),
                  SizedBox(height: 8,),
                  Text("Eiffel Tower",
                      style: AppThemes.light.textTheme.titleMedium!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.mainColorLight[100]
                  )),
                  SizedBox(height: 8,),
                  Text("7 Days and 6 Nights",
                      style: AppThemes.light.textTheme.titleMedium!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black[70]
                  )),
                  Text("Paris, France",
                      style: AppThemes.light.textTheme.titleMedium!.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black[70]
                  )),

                  SizedBox(height: 20),
                  Text("Top Activities",
                      style: AppThemes.light.textTheme.titleMedium!.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.mainColorLight[100])),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActivityCard(title: "Go to the Top", imageUrl: "https://picsum.photos/200"),
                      ActivityCard(title: "Louvre at Night", imageUrl: "https://picsum.photos/201"),
                    ],
                  ),SizedBox(height: 20),
                  Text("Best Time to Visit",
                      style: AppThemes.light.textTheme.titleMedium!.copyWith(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.mainColorLight[100])),
                  SizedBox(height: 20),
                  CustomInfoContainer(
                    child: CustomInfoContainer(
                      child: Text(
                        "Spring (April–June) and autumn (September–October) are perfect times to visit Paris, with mild weather and fewer tourists.",

                          style: AppThemes.light.textTheme.titleMedium!.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black[70])
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  SctionSeeMore(),

                  GridView.count(

                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: List.generate(4, (index) => ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network("https://picsum.photos/20${index+2}",

                          fit: BoxFit.cover),
                    )),
                  ),
                  SizedBox(height: 16,),
                  Center(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add_a_photo_outlined,size: 24,),
                      label: Text("Add Photo",
                        style: AppThemes.light.textTheme.titleMedium!.copyWith(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.mainColorLight[70])
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Text("Reviews",
                    style: AppThemes.light.textTheme.titleMedium!.copyWith(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainColorLight[100]),),
                  SizedBox(height: 10),
                  ReviewCard(
                    name: "Dale Thiel",
                    date: "11 months ago",
                    comment: "Such a dreamy place! The views were stunning...",
                    avatar: "https://i.pravatar.cc/150?u=1",
                  ),
                  ReviewCard(
                    name: "Léo Martin",
                    date: "6 months ago",
                    comment: "A beautiful escape from the ordinary. Everything was elegant...",
                    avatar: "https://i.pravatar.cc/150?u=2",
                  ),

                  InkWell(
                    onTap: (){},
                    child: Container(

                      width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xff1E429F)
                          )
                        ),
                        child: Center(
                          child: Text("See More",
                              style: AppThemes.light.textTheme.titleMedium!.copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff1E429F)

                              )
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ));

      // الجزء السفلي الثابت (السعر والزرار)

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
        Spacer(),
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("City Breaks",
            style: AppThemes.light.textTheme.titleMedium!.copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.black[70]
        )
        ),
        Spacer(),
        Wrap(
          children: List.generate(5, (index) {
            return Icon(
              index < 4 ? Icons.star : Icons.star_half, // مثال لتقييم 4.5
              color: Colors.amber,
              size: 14.h,
            );
          }),
        ),
        SizedBox(width: 5),
        Text("4.5 (675)",   style: AppThemes.light.textTheme.titleMedium!.copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.black[70]
        )),

      ],
    );
  }
}