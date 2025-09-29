import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/helpers/silver_home_medium_bar.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/features/home/exchange_home/widget/exchange_wifi.dart';
import 'package:stock_market/features/home/exchange_home/widget/home_medium_bar.dart';
import 'package:stock_market/features/home/exchange_home/widget/home_top_bar.dart';
import 'package:stock_market/features/home/exchange_home/widget/image_and_text.dart';
import 'package:stock_market/features/home/exchange_home/widget/image_indicator.dart';
import 'package:stock_market/features/home/exchange_home/widget/logos.dart';
import 'package:stock_market/features/home/exchange_home/widget/most_read_news.dart';
import 'package:stock_market/features/home/exchange_home/widget/show_more_button.dart';

class Exchange extends StatelessWidget {
  const Exchange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lightgray,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            /// ✅ شريط علوي ثابت
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: const HomeTopBar(),
              expandedHeight: 60.h, // حسب ارتفاع HomeTopBar
              collapsedHeight: 60,
            ),

            /// ✅ شريط متوسط ثابت
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(
                minHeight: 60.h,
                maxHeight: 60.h,
                child: HomeMediumBar(),
              ),
            ),

            /// ✅ باقي المحتوى قابل للتمرير
            SliverToBoxAdapter(child: ExchangWifi()),
            SliverToBoxAdapter(child: ImageIndicator()),
            SliverToBoxAdapter(child: ImageAndText()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: ShowMoreButton()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: MostReadNews()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: Logos()),
          ],
        ),
      ),
    );
  }
}
