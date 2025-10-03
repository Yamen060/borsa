import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/theming/styles.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(8.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.h,
        crossAxisSpacing: 8.w,
        childAspectRatio: 187 / 207,
      ),
      itemCount: 10, // عدد العناصر التي تريد عرضها
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: GestureDetector(
            child: Padding(
              padding: EdgeInsets.all(6.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/bell_and_hammer.png',
                    width: 187.w,
                    height: 110.h,
                    fit: BoxFit.cover,
                  ),

                  Text('EXCHANGE', style: TextStyles.font14lightredBold),

                  Text(
                    'New York\nThe stock market\nrenaued positive',
                    style: TextStyles.font11darkbold,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
