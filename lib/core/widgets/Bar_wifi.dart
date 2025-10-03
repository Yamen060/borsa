import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class BarWifi extends StatelessWidget {
  final String title; // متغير العنوان

  const BarWifi({super.key, required this.title}); // تمرير العنوان عبر الـ constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: ColorsManager.black),
      width: 402.w,
      height: 65.h,
      child: Row(
        children: [
          Text(title, style: TextStyles.font20WhiteBold), // استخدام المتغير بدل النص الثابت
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset(
              'assets/svgs/wifi.svg',
              height: 22.48.h,
              width: 22.48.w,
            ),
          ),
        ],
      ),
    );
  }
}
