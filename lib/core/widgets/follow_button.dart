import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/theming/colors.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 124,
      left: 78.5,
      width: 215.w,
      height: 17.h,
      child: SizedBox(
        width: 317.w,
        height: 44.h,
        child: ElevatedButton(
          onPressed: () {
            // Handle button press, e.g., navigate to TradingView
            print('Follow all markets on TradingView pressed');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                ColorsManager.lighmoregray, // Light grey background
            foregroundColor: ColorsManager.verydarkblue, // Dark blue text

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 0,
          ),
          child: const Text(
            'FOLLOW ALL MARKETS ON TRADINGVIEW',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
