import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/widgets/company_news.dart';
import 'package:stock_market/core/widgets/home_medium_bar.dart';
import 'package:stock_market/features/home/ui/widgets/Crypto_market_Home.dart';
import 'package:stock_market/features/home/ui/widgets/Economy_home.dart';
import 'package:stock_market/features/home/ui/widgets/Exchange.dart';
import 'package:stock_market/features/home/ui/widgets/Puplic_offering_Home.dart';
import 'package:stock_market/features/home/ui/widgets/commodity_home.dart';

import '../../features/home/ui/widgets/Agenda_home.dart';
import '../../features/home/ui/widgets/gallery_home.dart';

class HomeWithMediumBar extends StatefulWidget {
  const HomeWithMediumBar({super.key});

  @override
  State<HomeWithMediumBar> createState() => _HomeWithMediumBarState();
}

class _HomeWithMediumBarState extends State<HomeWithMediumBar> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Exchange(),
    CompanyNews(),
    AgendaHome(),
    EconomyHome(),
    PuplicOfferingHome(),
    CryptoMarketHome(),
    CommodityHome(),
    GalleryHome(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeMediumBar(
          onTabSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
            _pageController.jumpToPage(index); // التنقل الفوري
          },
        ),
        SizedBox(
          height: 400.h, // يمكن تعديل الارتفاع حسب التصميم
          child: PageView(
            controller: _pageController,
            physics:
                NeverScrollableScrollPhysics(), // التحكم فقط عن طريق الأزرار
            children: _pages,
          ),
        ),
      ],
    );
  }
}
