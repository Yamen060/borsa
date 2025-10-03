import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/widgets/home_with_medium_bar.dart';
import 'package:stock_market/core/widgets/silver_home_medium_bar.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/widgets/scroll_top_button.dart';
import 'package:stock_market/core/widgets/Bar_wifi.dart';
import 'package:stock_market/core/widgets/home_medium_bar.dart';
import 'package:stock_market/core/widgets/home_top_bar.dart';
import 'package:stock_market/core/widgets/image_and_text.dart';
import 'package:stock_market/core/widgets/image_indicator.dart';
import 'package:stock_market/core/widgets/logos.dart';
import 'package:stock_market/core/widgets/most_read_news.dart';
import 'package:stock_market/core/widgets/show_more_button.dart';
import 'package:stock_market/core/widgets/app_drawer.dart';

class AgendaHome extends StatefulWidget {
  const AgendaHome({super.key});

  @override
  State<AgendaHome> createState() => _AgendaHomeState();
}

class _AgendaHomeState extends State<AgendaHome> {
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
                  backgroundColor: Colors.white,
                  elevation: 0,
                  flexibleSpace: const HomeTopBar(),
                  expandedHeight: 60.h, // حسب ارتفاع HomeTopBar
                  collapsedHeight: 60,
                ),

                /// ✅ شريط متوسط ثابت
             

                /// ✅ باقي المحتوى قابل للتمرير
                SliverToBoxAdapter(child: BarWifi(title: 'Agenda')),
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
