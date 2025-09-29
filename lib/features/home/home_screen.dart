import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/helpers/silver_home_medium_bar.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/features/home/exchange_home/widget/home_medium_bar.dart';
import 'package:stock_market/features/home/exchange_home/widget/home_top_bar.dart';
import 'package:stock_market/features/home/exchange_home/widget/image_indicator.dart';
import 'package:stock_market/features/home/exchange_home/widget/logos.dart';
import 'package:stock_market/features/home/exchange_home/widget/most_read_news.dart';
import 'package:stock_market/features/home/widgets/auther_card.dart';
import 'package:stock_market/features/home/widgets/company_news.dart';
import 'package:stock_market/features/home/widgets/company_news_picture.dart';
import 'package:stock_market/features/home/widgets/stock_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9DBDB),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            /// ✅ شريط علوي ثابت
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,

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

            SliverToBoxAdapter(child: StockBar()),
            SliverToBoxAdapter(
              child: Image.asset(
                'assets/images/my_space.png',
                width: double.infinity.w,
                height: 118.h,
              ),
            ),
            SliverToBoxAdapter(child: ImageIndicator()),
            SliverToBoxAdapter(
              child: Image.asset(
                'assets/images/zone.png',
                width: 372.w,
                height: 128.h,
              ),
            ),
            SliverToBoxAdapter(child: CompanyNews()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: AuthorCard()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: CompanyNews()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: CompanyNews()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: CompanyNewsPicture()),
            SliverToBoxAdapter(child: CompanyNewsPicture()),
            SliverToBoxAdapter(child: verticalSpace(15)),
            SliverToBoxAdapter(child: MostReadNews()),
            SliverToBoxAdapter(child: verticalSpace(10)),
            SliverToBoxAdapter(child: Logos()),
          ],
        ),
      ),
    );
  }
}
