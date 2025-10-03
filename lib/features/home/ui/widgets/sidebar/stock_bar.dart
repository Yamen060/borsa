import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';
import 'package:stock_market/core/widgets/follow_button.dart';

class StockBar extends StatefulWidget {
  const StockBar({super.key});

  @override
  _StockBarState createState() => _StockBarState();
}

class _StockBarState extends State<StockBar> {
  final ScrollController _scrollController = ScrollController();
  late Timer _timer;
  double _scrollPosition = 0;
  final double _scrollSpeed = 1.0; // سرعة التمرير، عدلها حسب الحاجة

  final List<Map<String, String>> tickerItems = [
    {'text': 'USDTRY', 'iconPath': 'assets/svgs/flags_european.svg'},
    {'text': 'EURTRY', 'iconPath': 'assets/svgs/flags_us.svg'},
    {'text': 'BIST100', 'iconPath': 'assets/svgs/red_circlue.svg'},
    {'text': 'USDTRY', 'iconPath': 'assets/svgs/flags_european.svg'},
    {'text': 'EURTRY', 'iconPath': 'assets/svgs/flags_us.svg'},
    {'text': 'BIST100', 'iconPath': 'assets/svgs/red_circlue.svg'},
    {'text': 'USDTRY', 'iconPath': 'assets/svgs/flags_european.svg'},
    {'text': 'EURTRY', 'iconPath': 'assets/svgs/flags_us.svg'},
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      if (_scrollController.hasClients) {
        _scrollPosition += _scrollSpeed;

        if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
          // لما توصل للنهاية، ارجع للبداية
          _scrollPosition = 0;
          _scrollController.jumpTo(_scrollPosition);
        } else {
          _scrollController.jumpTo(_scrollPosition);
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildTickerItem(Map<String, String> item) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10.w, 14.h, 14.w, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item['text']!, style: TextStyles.font10blackMedium),
              SizedBox(height: 8.h),
              SvgPicture.asset(item['iconPath']!, width: 24.w, height: 24.h),
              SizedBox(height: 12.h, width: 12.w),
              Container(
                width: 1.w,
                height: 65.h,
                color: ColorsManager.black.withOpacity(1),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 369.w,
          height: 168.h,
          margin: EdgeInsets.all(10.w),
          color: ColorsManager.white,
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            physics:
                const NeverScrollableScrollPhysics(), // عشان المستخدم ما يوقف التمرير باللمس
            itemCount: tickerItems.length * 1000, // تكرار عشان يحس أنه لا نهائي
            itemBuilder: (context, index) {
              final item = tickerItems[index % tickerItems.length];
              return _buildTickerItem(item);
            },
          ),
        ),
        FollowButton(),
      ],
    );
  }
}
