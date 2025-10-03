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
                Navigator.of(context).pushReplacementNamed(Routes.exchange);
              },
              child: Text('Exchange', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.companynews);
              },
              child: Text('Company News', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.agendahome);
              },
              child: Text('Agenda', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.economyhome);
              },
              child: Text('Economy', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushReplacementNamed(Routes.puplicofferinghome);
              },
              child: Text('Public Offering', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushReplacementNamed(Routes.cryptomarkethome);
              },
              child: Text('Crypto Market', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushReplacementNamed(Routes.commodityhome);
              },
              child: Text('Commodity', style: TextStyles.font16BlackBold),
            ),
            SizedBox(width: 12.w),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.galleryhome);
              },
              child: Text('Gallery', style: TextStyles.font16BlackBold),
            ),
          ],
        ),
      ),
    );
  }
}
