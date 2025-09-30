import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/routing/routes.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';
import 'package:stock_market/features/home/ui/Exchange_home/widget/logos.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 402.w,
      backgroundColor: ColorsManager.beige,
      child: Column(
        children: [
          verticalSpace(10.h),
          Container(
            width: 402.w,
            height: 68.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              color: const Color(0xFFE8E6E6), // نفس لون الخلفية كما في الصورة
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF444444).withOpacity(0.25),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: ColorsManager.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 80.w),
                Text('Menu', style: TextStyles.font20blackSemiBold),
              ],
            ),
          ),

          /// ✅ العناصر داخل مربعات شفافة + تباعد بينها
          _drawerItem(
            icon: Icons.home,
            title: 'Home page',
            onTap: () => Navigator.of(context).pushNamed(Routes.Screen_Home),
          ),
          _drawerItem(
            icon: Icons.folder,
            title: 'Categories',
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => Navigator.pop(context),
          ),
          _drawerItem(
            icon: Icons.camera_alt,
            title: 'Photo Gallery',
            onTap: () => Navigator.pop(context),
          ),
          _drawerItem(
            icon: Icons.videocam,
            title: 'Video',
            onTap: () => Navigator.pop(context),
          ),
          _drawerItem(
            icon: Icons.edit,
            title: 'Authors',
            onTap: () => Navigator.pop(context),
          ),
          _drawerItem(
            icon: Icons.poll,
            title: 'Polls',
            onTap: () => Navigator.pop(context),
          ),
          _drawerItem(
            icon: Icons.contact_page,
            title: 'Imprint',
            onTap: () => Navigator.pop(context),
          ),
          _drawerItem(
            icon: Icons.email,
            title: 'Communication',
            onTap: () => Navigator.pop(context),
          ),

          SizedBox(height: 10.h),
          const Logos(),
        ],
      ),
    );
  }

  Widget _drawerItem({
    required IconData icon,
    required String title,
    Widget? trailing,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.w), // ✅ gap: 5~6
      child: Container(
        width: 402.w,
        height: 68.h,
        margin: EdgeInsets.symmetric(horizontal: 4.w),
        decoration: BoxDecoration(
          color: ColorsManager.beige.withOpacity(1),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.averagegray.withOpacity(0.2),
              blurRadius: 4,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: ListTile(
          leading: Icon(icon, color: ColorsManager.darkorange),
          title: Text(title, style: TextStyles.font16averagegraySemiBold),
          trailing: trailing,
          onTap: onTap,
        ),
      ),
    );
  }
}
