import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class CategorisPositioned extends StatelessWidget {
  const CategorisPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
              top: 120
                  .h, // يبدأ البودي فوق الـ AppBar (تقدر تعدل الرقم حسب الذوق)
              left: 0,
              right: 0,
              bottom: 0,
              child: ListView(
                padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 0),
                children: [
                  _buildCategoryItem(
                    context,
                    title: 'Exchange',
                    onTap: () => Navigator.of(context).pushNamed('/Exchange'),
                    iconData: Icons.swap_horiz,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Economy',
                    onTap: () =>
                        Navigator.of(context).pushNamed('/Economy_Home'),
                    iconData: Icons.money,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Commodity',
                    onTap: () {
                      Navigator.of(context).pushNamed('/Commodity_Home');
                    },
                    iconData: Icons.widgets,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Gallery',
                    onTap: () {
                      Navigator.of(context).pushNamed('/Gallery_Home');
                    },
                    iconData: Icons.add_photo_alternate,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Agenda',
                    onTap: () {
                      Navigator.of(context).pushNamed('/Agenda_Home');
                    },
                    iconData: Icons.event_note,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Crypto Market',
                    onTap: () {
                      Navigator.of(context).pushNamed('/Crypto_market_Home');
                    },
                    iconData: Icons.currency_bitcoin,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Company News',
                    onTap: () {
                      Navigator.of(context).pushNamed('/Company_News');
                    },
                    iconData: Icons.article,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Stock Market Agenda',
                    onTap: () {
                      // أضف مسار التنقل الخاص بك هنا
                    },
                    iconData: Icons.trending_up,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'BIST 100 Heat Map',
                    onTap: () {
                      // أضف مسار التنقل الخاص بك هنا
                    },
                    iconData: Icons.local_fire_department,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Coin Heat Map',
                    onTap: () {
                      // أضف مسار التنقل الخاص بك هنا
                    },
                    iconData: Icons.paid,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Economic Calendar',
                    onTap: () {
                      // أضف مسار التنقل الخاص بك هنا
                    },
                    iconData: Icons.calendar_month,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Cryptocurrency Market',
                    onTap: () {
                      // أضف مسار التنقل الخاص بك هنا
                    },
                    iconData: Icons.vpn_key,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'Privacy Policy',
                    onTap: () {
                      Navigator.of(context).pushNamed('/PrivacyPolicy');
                    },
                    iconData: Icons.policy,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'About Us',
                    onTap: () {
                      Navigator.of(context).pushNamed('/AboutUs');
                    },
                    iconData: Icons.people,
                  ),
                  verticalSpace(8),
                  _buildCategoryItem(
                    context,
                    title: 'communication',
                    onTap: () {
                      Navigator.of(context).pushNamed('/Communication');
                    },
                    iconData: Icons.connect_without_contact,
                  ),
                ],
              ),
            );
  }
}
// دالة مساعدة لبناء عنصر واحد في القائمة
  Widget _buildCategoryItem(
    BuildContext context, {
    required String title,
    required IconData iconData, // أيقونة لكل عنصر
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
      height: 68.h,
      width: 402.w,
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Icon(
          iconData,
          color: ColorsManager.darkorange, // اللون الأحمر الموجود في الصورة
          size: 24,
        ),
        title: Text(title, style: TextStyles.font16blackMedium),
        onTap: onTap,
      ),
    );
  }
