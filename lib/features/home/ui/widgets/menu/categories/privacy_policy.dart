import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/widgets/class_bar_green.dart';
import 'package:stock_market/core/widgets/home_with_medium_bar.dart';
import 'package:stock_market/core/widgets/silver_home_medium_bar.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';
import 'package:stock_market/core/widgets/home_medium_bar.dart';
import 'package:stock_market/core/widgets/home_top_bar.dart';
import 'package:stock_market/core/widgets/logos.dart';
import 'package:stock_market/core/widgets/app_drawer.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: ColorsManager.lightgray,
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
             
                SliverToBoxAdapter(
                  child: ClassBarGreen(
                    title: 'Privacy Policy',
                    icon: Icons.account_box_outlined,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Our Principles and Policies\nThe personal data protection policy and privacy\nprinciples are operated by MEDYA GÜNDEM DİJİTAL\nYAYINCILIK TİCARET A.Ş. (hereinafter referred to as\nbills, deposit and loan rates, foreign exchange,\nparities, crypto assets and commodities, as well\nas in global financial markets and the economy,\nby interpreting them with an up-to-date, reliable\nand accurate journalism approach; in this way, it\ncontributes to their financial literacy. Offering an\neasy and simple interface experience to its\nusers, borsagundem.com.tr is an indispensable\nresource in financial markets and economy for\nvisitors seeking financial information with\ninformation packages that appeal to investors\nof all levels prepared by its hardworking and\nprofessional team\nMissio\nTo be the most accurate, up-to-date and most\nreliable internet news site for those who want to\nfollow the news, developments and information\nin all financial markets, especially the money and\ncapital markets, in an up-to-date and realistic\nway.\nVision\nTo be the indispensable website address for its\nusers who are in search of up-to-date, accurate\nand reliable information by publishing in\naccordance with the ethics of the press\nprofession.\nWarning\nThe investment information, comments, or\nadvice presented herein does not constitute\ninvestment advice. Investment advisory services\nare provided through contracts signed between\nbrokerage houses or portfolio management\ncompanies. Comments here are based on\npersonal opinions and may not be suitable for\nevery investor`s financial situation.',
                          style: TextStyles.font12darkbold,
                        ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(child: Logos()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
