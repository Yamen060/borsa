import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/widgets/home_with_medium_bar.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/widgets/scroll_top_button.dart';
import 'package:stock_market/core/widgets/home_top_bar.dart';
import 'package:stock_market/core/widgets/image_indicator.dart';
import 'package:stock_market/core/widgets/logos.dart';
import 'package:stock_market/core/widgets/most_read_news.dart';
import 'package:stock_market/core/widgets/app_drawer.dart';
import 'package:stock_market/features/home/ui/widgets/auther_card.dart';
import 'package:stock_market/core/widgets/company_news_class.dart';
import 'package:stock_market/core/widgets/company_news_picture.dart';
import 'package:stock_market/features/home/ui/widgets/sidebar/stock_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  // قائمة المحتوى لتجنب التكرار
  final List<Widget> _contentList = [
    CompanyNewsClass(),
    CompanyNewsPicture(),
    CompanyNewsClass(),
    AuthorCard(),
    CompanyNewsPicture(),
    MostReadNews(),
    Logos(),
  ];

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
                /// AppBar ثابت
                SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  flexibleSpace: const HomeTopBar(),
                  expandedHeight: 60.h,
                  collapsedHeight: 60.h,
                ),

                /// شريط التنقل الأفقي
                SliverToBoxAdapter(child: HomeWithMediumBar()),

                /// شريط البورصة
                SliverToBoxAdapter(child: StockBar()),

                /// الصور والعناصر الفردية
                SliverToBoxAdapter(
                  child: Image.asset(
                    'assets/images/my_space.png',
                    width: double.infinity,
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

                /// قائمة المحتوى الديناميكية
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: _contentList[index],
                      );
                    },
                    childCount: _contentList.length,
                  ),
                ),

                /// مسافة إضافية أسفل الصفحة
                SliverToBoxAdapter(child: verticalSpace(20)),
              ],
            ),

            /// زر الرجوع لأعلى
            ScrollToTopButton(scrollController: _scrollController),
          ],
        ),
      ),
    );
  }
}
