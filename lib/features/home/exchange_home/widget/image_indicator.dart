import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stock_market/core/theming/colors.dart';

class ImageIndicator extends StatelessWidget {
  ImageIndicator({super.key});

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
        width: 386.w,
        height: 208.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: controller,
              children: [
                Image.asset(
                  'assets/images/stock_exchange.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/stock_exchange.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/stock_exchange.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/stock_exchange.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/stock_exchange.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/stock_exchange.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/stock_exchange.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/stock_exchange.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/stock_exchange.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/stock_exchange.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            // Positioned إذا تحب تزحزحه لأعلى شوي
            Padding(
              padding: const EdgeInsets.only(
                bottom: 16,
              ), // مسافة من أسفل الصورة
              child: SmoothPageIndicator(
                controller: controller,
                count: 10,
                effect: ExpandingDotsEffect(
                  expansionFactor: 1.1,
                  dotHeight: 2.h,
                  dotWidth: 14.w,
                  spacing: 6,
                  activeDotColor: ColorsManager.darkorange,
                  dotColor: ColorsManager.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
