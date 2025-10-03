import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class CompanyNewsPicture extends StatelessWidget {
  const CompanyNewsPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 307.w,
      height: 220.h,

      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('assets/images/company_news.png'),
          const SizedBox(height: 20),
          Text(
            'User traffic peaks in mackolik apps',
            style: TextStyles.font15BlackBold,
          ),
        ],
      ),
    );
  }
}
