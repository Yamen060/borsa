import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/widgets/full_screen.dart';
import 'package:stock_market/core/widgets/share_button.dart';
import 'package:stock_market/core/widgets/silver_home_medium_bar.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';
import 'package:stock_market/core/widgets/scroll_top_button.dart';
import 'package:stock_market/core/widgets/home_medium_bar.dart';
import 'package:stock_market/core/widgets/home_top_bar.dart';
import 'package:stock_market/core/widgets/logos.dart';
import 'package:stock_market/core/widgets/most_read_news.dart';
import 'package:stock_market/core/widgets/app_drawer.dart';
import 'package:stock_market/core/widgets/company_news_class.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
                SliverToBoxAdapter(child: verticalSpace(15)),
                SliverToBoxAdapter(
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'COMPANY NEWS',
                          style: TextStyles.font16darkorangeSemiBold,
                        ),
                        Text(
                          'Seyitler Kimya’s dividend\n decision was clarified at\n the general assembly',
                          style: TextStyles.font20BlackBold,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Center(
                    child: Stack(
                      children: [
                        // الصورة الأصلية
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/consistency.png', // 🔁 غيّر المسار حسب مكان الصورة
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // زر الفتح الكامل في أعلى اليمين
                        Positioned(
                          top: 8,
                          right: 8,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => FullScreenImage(
                                    imagePath: 'assets/images/consistency.png',
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(6),
                              child: const Icon(
                                Icons.fullscreen,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: 360.w,
                    color: Colors.grey.shade100, // خلفية خفيفة كما في الصورة
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // زر المشاركة
                        ShareButton(),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 42, 0, 0),
                          child: IconButton(
                            icon: Icon(Icons.timer),
                            onPressed: () {},
                          ),
                        ),
                        verticalSpace(10),
                        Row(
                          children: [
                            Container(
                              width: 50.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                color: ColorsManager.white,
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'A-',
                                    style: TextStyles.font13blackreguler,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              width: 50.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: ColorsManager.black),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "A+",
                                    style: TextStyles.font13blackreguler,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: Container(
                    color: ColorsManager.white,
                    width: 373,
                    height: 33,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today, size: 16),
                            SizedBox(width: 6),
                            Text(
                              '26.09.2025 - 17:45',
                              style: TextStyles.font10blackLight,
                            ),
                          ],
                        ),
                        Text(
                          'Reading Time: 1 min',
                          style: TextStyles.font13blackLight,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: verticalSpace(5)),
                SliverToBoxAdapter(
                  child: Container(
                    color: ColorsManager.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 338.w,

                          child: Text(
                            'At the ordinary general assembly meeting for 2024 held on September 26, 2025, Seyitler Kimya Sanayi A.Ş. (SEYKM) unanimously decided not to distribute dividends. The company reported that there was a net loss for the period in the financial statements prepared as a result of its activities in 2024 and therefore there was no distributable profit.According to the financial statements:Net loss for the period according to CMB: -34,572,513 TL Net loss for the period according to legal records: -10,075,222.68 TL Retained losses: TL 198,144,561.77 According to the companys statement, no dividend payments will be made in cash or bonus shares in line with these results The statement sent by the company to KAP is as follows:',
                            style: TextStyles.font16BlackBold,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
                          color: ColorsManager.whiteback,

                          width: 332.w,
                          child: Text(
                            'At the 2024 Ordinary General Assembly Meeting of our Company held on September 26, 2025 at 10:00 a.m. at Turgutlu 1.OSB 2007 Cad. No:5-7 Turgutlu/MANİSA, it was unanimously decided not to distribute dividends.In the financial statements prepared as a result of the activities of 2024, no profit subject to profit distribution was generated.',
                            style: TextStyles.font14blackreguler,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 20, 0, 0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: ColorsManager.lightgray,
                              minimumSize: Size(75.w, 28.h),
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: Colors.black.withOpacity(
                                    0.5,
                                  ), // أو أي لون تريد
                                  width: 0.5, // سماكة الإطار
                                ),
                              ),
                            ),

                            onPressed: () {},
                            child: Text(
                              'Oba pasta',
                              style: TextStyles.font10mediumgrayMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: CompanyNewsClass()),
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
