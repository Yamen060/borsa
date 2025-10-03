import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';
import 'package:stock_market/core/widgets/app_drawer.dart';
import 'package:stock_market/core/widgets/class_bar_green.dart';
import 'package:stock_market/core/widgets/home_medium_bar.dart';
import 'package:stock_market/core/widgets/home_top_bar.dart';
import 'package:stock_market/core/widgets/scroll_top_button.dart';
import 'package:stock_market/core/widgets/silver_home_medium_bar.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
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
                SliverToBoxAdapter(
                  child: ClassBarGreen(
                    title: 'Video',
                    icon: Icons.video_collection_sharp,
                  ),
                ),
                SliverToBoxAdapter(child: verticalSpace(20)),
              ],
            ),
            ScrollToTopButton(scrollController: _scrollController),
          ],
        ),
      ),
    );
  }
}
