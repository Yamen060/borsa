import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class HomeMediumBar extends StatelessWidget {
  final Function(int)? onTabSelected;

  HomeMediumBar({Key? key, this.onTabSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      color: ColorsManager.lightgray,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            8,
            (index) => Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: TextButton(
                onPressed: () {
                  if (onTabSelected != null) onTabSelected!(index);
                },
                child: Text(_titles[index], style: TextStyles.font16BlackBold),
              ),
            ),
          ),
        ),
      ),
    );
  }

  final List<String> _titles = [
    'Exchange',
    'Company News',
    'Agenda',
    'Economy',
    'Public Offering',
    'Crypto Market',
    'Commodity',
    'Gallery',
  ];
}
