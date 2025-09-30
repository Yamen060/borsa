import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_market/core/theming/colors.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: ColorsManager.darkorange),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            color: ColorsManager.white,

            icon: const Icon(Icons.menu),
            iconSize: 25,
            onPressed: () {},
          ),
          Spacer(),
          SvgPicture.asset(
            'assets/svgs/borsa_syria.svg',
            height: 35.h,
            width: 205.w,
          ),
          Spacer(),
          SvgPicture.asset(
            'assets/svgs/theme.svg',
            height: 26.h,
            width: 26.w,
            color: Colors.black,
          ),

          IconButton(
            color: ColorsManager.lightgray,

            icon: const Icon(Icons.search),
            iconSize: 25,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
