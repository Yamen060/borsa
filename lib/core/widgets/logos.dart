import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logos extends StatelessWidget {
  const Logos({super.key});

  Widget _buildLogo(String assetPath) {
    return Container(
      width: 63.w,
      height: 49.h,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF).withOpacity(0.8), 
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: const Color(0x33000000), 
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0x40000000), 
            offset: const Offset(0, 4), 
            blurRadius: 4, 
          ),
        ],
      ),
      child: SvgPicture.asset(
        assetPath,
        width: 24.w, 
        height: 24.h,
        fit: BoxFit.contain,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLogo('assets/svgs/google.svg'),

          _buildLogo('assets/svgs/facebook .svg'),

          _buildLogo('assets/svgs/twiter.svg'),

          _buildLogo('assets/svgs/telegram.svg'),

          _buildLogo('assets/svgs/instegram.svg'),
        ],
      ),
    );
  }
}
