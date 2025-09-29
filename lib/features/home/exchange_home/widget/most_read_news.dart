import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class MostReadNews extends StatelessWidget {
  const MostReadNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: ColorsManager.darkorange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            // عنوان القسم
            Row(
              children: [
                SizedBox(width: 16.w),
                Text('Most Read News', style: TextStyles.font18SemiBold),
                SizedBox(width: 8.w),
                Expanded(
                  child: Container(height: 1, color: ColorsManager.white),
                ),
              ],
            ),
            SizedBox(height: 12.h),

            // ✅ تكرار الخبر 4 مرات مثلاً
            ...List.generate(10, (index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 8.w),
                    // ✅ صورة الخبر
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/live_news.png',

                        fit: BoxFit.cover,
                        frameBuilder:
                            (context, child, frame, wasSynchronouslyLoaded) {
                              if (wasSynchronouslyLoaded || frame != null) {
                                return child;
                              } else {
                                return Shimmer.fromColors(
                                  baseColor: ColorsManager.lightgray,
                                  highlightColor: Colors.white,
                                  child: Container(
                                    width: 100.w,
                                    height: 70.h,
                                    color: Colors.white,
                                  ),
                                );
                              }
                            },
                      ),
                    ),
                    SizedBox(width: 4.w),
                    // ✅ نص الخبر
                    Expanded(
                      child: Container(
                        height: 70.h,
                        alignment: Alignment.center,
                        child: Text(
                          '4 companies decided on\ndividends on Borsa Istanbul',
                          style: TextStyles.font14lightwhitereguler,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
