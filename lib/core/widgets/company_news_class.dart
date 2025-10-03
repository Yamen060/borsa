import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class CompanyNewsClass extends StatefulWidget {
  const CompanyNewsClass({super.key});

  @override
  State<CompanyNewsClass> createState() => _CompanyNewsClassState();
}

class _CompanyNewsClassState extends State<CompanyNewsClass> {
  
 
      int _currentIndex = 0;

  final List<Map<String, String>> newsItems = [
    {
      'image': 'assets/images/company_news.png',
      'title': 'User traffic peaks in mackolik apps',
    },
    {
      'image': 'assets/images/live_news.png',
      'title': 'New feature launched successfully',
    },
    {
      'image': 'assets/images/company_news.png',
      'title': 'Partnership with major companies',
    },
  ];

  void _nextNews() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % newsItems.length;
    });
  }

  void _prevNews() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + newsItems.length) % newsItems.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 370.w,
      height: 288.h,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Header Row: Title + Line + Arrows
          Row(
            children: [
              Text('Company News', style: TextStyles.font16violetdBold),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  height: 2.h,
                  width: 99.w,
                  color: ColorsManager.violetblue,
                ),
              ),
              const SizedBox(width: 8),
              Row(
                children: [
                  _arrowButton(Icons.chevron_left, _prevNews),
                  const SizedBox(width: 4),
                  _arrowButton(Icons.chevron_right, _nextNews),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              newsItems[_currentIndex]['image']!,
              height: 172.h,
              width: 307.w,
            ),
          ),

          const SizedBox(height: 12),

          // Text Under Image
          Text(
            newsItems[_currentIndex]['title']!,
            style: TextStyles.font15BlackBold,
          ),
        ],
      ),
    );
  }

  Widget _arrowButton(IconData icon, VoidCallback onPressed) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: ColorsManager.darkorange,
        borderRadius: BorderRadius.circular(6),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(icon, color: Colors.white, size: 20),
        onPressed: onPressed,
      ),
    );
  }
  }
