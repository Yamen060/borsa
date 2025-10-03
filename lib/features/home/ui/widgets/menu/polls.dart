import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/widgets/class_bar_green.dart';
import 'package:stock_market/core/widgets/silver_home_medium_bar.dart';
import 'package:stock_market/core/routing/routes.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';
import 'package:stock_market/core/widgets/home_medium_bar.dart';
import 'package:stock_market/core/widgets/home_top_bar.dart';
import 'package:stock_market/core/widgets/logos.dart';
import 'package:stock_market/core/widgets/app_drawer.dart';

class Polls extends StatelessWidget {
  const Polls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: ColorsManager.whiteback,

      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
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
                  child: ClassBarGreen(title: 'Poll',icon: Icons.account_box_outlined),),

                SliverToBoxAdapter(
                  child: Image.asset('assets/images/green_lock.png'),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(26, 0, 24, 0),
                    child: Container(
                      color: ColorsManager.white,

                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You must be a registered user to participate in polls',
                            style: TextStyles.font16BlackBold,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: ColorsManager.darkorange,
                              minimumSize: Size(152.w, 36.h),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(
                                context,
                              ).pushNamed(Routes.TakeSurvyButton);
                            },
                            child: Text(
                              'Take the Survy',
                              style: TextStyles.font11whiteBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SliverToBoxAdapter(child: SizedBox(height: 20.h)),
                SliverToBoxAdapter(child: Logos()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
