import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class PollOption extends StatelessWidget {
  final bool isSelected;
  final String title;
  final double percent;
  final int votes;
  final VoidCallback onTap;

  const PollOption({
    super.key,
    required this.isSelected,
    required this.title,
    required this.percent,
    required this.votes,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 32.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFD9D9D9), width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 18, 18, 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/SABIT.png',
                width: 294.w,
                height: 144.h,
                fit: BoxFit.cover,
              ),
              verticalSpace(10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: ColorsManager.violetblue,
                        width: 2,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected ? Colors.green : Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(title, style: TextStyles.font12blackreguler),
                ],
              ),
              const SizedBox(height: 6),
              Visibility(
                visible: isSelected,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "%${percent.toStringAsFixed(1)} ($votes Oy)",
                      style: TextStyles.font12blackreguler,
                    ),
                    const SizedBox(height: 4),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: LinearProgressIndicator(
                        value: percent / 100,
                        minHeight: 10,
                        backgroundColor: ColorsManager.lightmoregray,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          ColorsManager.darkgreen,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
