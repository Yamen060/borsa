import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/routing/routes.dart'; // تأكد من استيراد ملف routes.dart الخاص بك
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
                // استخدام pushReplacementNamed
                Navigator.of(context).pushReplacementNamed(Routes.Exchange);
              },
              child: Text('Exchange', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.Company_News);
              },
              child: Text('Company News', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.Agenda_Home);
              },
              child: Text('Agenda', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.Economy_Home);
              },
              child: Text('Economy', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushReplacementNamed(Routes.Puplic_offering_Home);
              },
              child: Text('Public Offering', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushReplacementNamed(Routes.Crypto_market_Home);
              },
              child: Text('Crypto Market', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushReplacementNamed(Routes.Commodity_Home);
              },
              child: Text('Commodity', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.Gallery_Home);
              },
              child: Text('Gallery', style: TextStyles.font16BlackBold),
            ),
          ],
        ),
      ),
    );
  }
}
