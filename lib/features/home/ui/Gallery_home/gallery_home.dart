import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/helpers/silver_home_medium_bar.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/widgets/scroll_top_button.dart';
import 'package:stock_market/features/home/ui/Exchange_home/widget/Bar_wifi.dart';
import 'package:stock_market/features/home/ui/Exchange_home/widget/home_medium_bar.dart';
import 'package:stock_market/features/home/ui/Exchange_home/widget/home_top_bar.dart';
import 'package:stock_market/features/home/ui/Exchange_home/widget/image_and_text.dart';
import 'package:stock_market/features/home/ui/Exchange_home/widget/image_indicator.dart';
import 'package:stock_market/features/home/ui/Exchange_home/widget/logos.dart';
import 'package:stock_market/features/home/ui/Exchange_home/widget/most_read_news.dart';
import 'package:stock_market/features/home/ui/Exchange_home/widget/show_more_button.dart';
import 'package:stock_market/features/home/ui/widgets/app_drawer.dart';

class GalleryHome extends StatefulWidget {
  const GalleryHome({super.key});

  @override
  State<GalleryHome> createState() => _GalleryHomeState();
}

class _GalleryHomeState extends State<GalleryHome> {
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
      backgroundColor: ColorsManager.lightgray,
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              controller: _scrollController,
              slivers: [
                /// ✅ شريط علوي ثابت
                SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: ColorsManager.white,
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
                SliverToBoxAdapter(child: BarWifi(title: 'Gallery')),

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

            ScrollToTopButton(scrollController: _scrollController),
          ],
        ),
      ),
    );
  }
}
