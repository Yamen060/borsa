import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class ExchangWifi extends StatelessWidget {
  const ExchangWifi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: ColorsManager.black),
      width: 402.w,
      height: 65.h,

      child: Row(
        children: [
          Text('Exchange', style: TextStyles.font20WhiteBold),
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
