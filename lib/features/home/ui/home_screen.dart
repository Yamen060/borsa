import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/widgets/silver_home_medium_bar.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/widgets/scroll_top_button.dart';
import 'package:stock_market/core/widgets/home_medium_bar.dart';
import 'package:stock_market/core/widgets/home_top_bar.dart';
import 'package:stock_market/core/widgets/image_indicator.dart';
import 'package:stock_market/core/widgets/logos.dart';
import 'package:stock_market/core/widgets/most_read_news.dart';
import 'package:stock_market/core/widgets/app_drawer.dart';
import 'package:stock_market/features/home/ui/widgets/auther_card.dart';
import 'package:stock_market/core/widgets/company_news_class.dart';
import 'package:stock_market/features/home/ui/widgets/company_news_picture.dart';
import 'package:stock_market/features/home/ui/widgets/stock_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: ColorsManager.whiteback,
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              controller: _scrollController, // مهم جداً تمرير الكنترولر
              slivers: [
                SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  flexibleSpace: const HomeTopBar(),
                  expandedHeight: 60.h,
                  collapsedHeight: 60,
                ),
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
                SliverToBoxAdapter(child: CompanyNewsClass()),
                SliverToBoxAdapter(child: verticalSpace(10)),
                SliverToBoxAdapter(child: AuthorCard()),
                SliverToBoxAdapter(child: verticalSpace(10)),
                SliverToBoxAdapter(child: CompanyNewsClass()),
                SliverToBoxAdapter(child: verticalSpace(10)),
                SliverToBoxAdapter(child: CompanyNewsClass()),
                SliverToBoxAdapter(child: verticalSpace(10)),
                SliverToBoxAdapter(child: CompanyNewsPicture()),
                SliverToBoxAdapter(child: CompanyNewsPicture()),
                SliverToBoxAdapter(child: verticalSpace(15)),
                SliverToBoxAdapter(child: MostReadNews()),
                SliverToBoxAdapter(child: verticalSpace(10)),
                SliverToBoxAdapter(child: Logos()),
                SliverToBoxAdapter(child: verticalSpace(10)),
              ],
            ),

            // زر الرجوع لأعلى هنا، خارج Slivers، داخل Stack
            ScrollToTopButton(scrollController: _scrollController),
          ],
        ),
      ),
    );
  }
}
