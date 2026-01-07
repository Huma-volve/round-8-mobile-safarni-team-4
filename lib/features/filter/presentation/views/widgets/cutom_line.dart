import 'package:flutter/cupertino.dart';

import '../../../../../core/colors/app_colors.dart';

class customLine extends StatelessWidget {
  const customLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 1,
      color: AppColors.black[20],
      margin: EdgeInsets.only(
          bottom: 12,top:20
      ),
    );
  }
}