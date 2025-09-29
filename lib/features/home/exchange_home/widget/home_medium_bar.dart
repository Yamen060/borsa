import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/routing/routes.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class HomeMediumBar extends StatefulWidget {
  const HomeMediumBar({super.key});

  @override
  State<HomeMediumBar> createState() => _HomeMediumBarState();
}

class _HomeMediumBarState extends State<HomeMediumBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: ColorsManager.lightgray),
      height: 62.h,
      padding: const EdgeInsets.only(top: 11, bottom: 11),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.Exchange);
              },
              child: Text('Exchange', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {},
              child: Text('Company News', style: TextStyles.font16BlackBold),
            ),

            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {},
              child: Text('Agenda', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {},
              child: Text('Economy', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {},
              child: Text('Public Offering', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {},
              child: Text('Crypto Market', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {},
              child: Text('Commodity', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {},
              child: Text('Gallery', style: TextStyles.font16BlackBold),
            ),
          ],
        ),
      ),
    );
  }
}
