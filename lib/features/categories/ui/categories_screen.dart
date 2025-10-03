import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/helpers/extension.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';
import 'package:stock_market/features/categories/ui/widgets/categoris_positioned.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.white,
        body: Stack(
          children: [
            // AppBar ثابت بالخلفية Gradient
            AppBar(
              leadingWidth: 70.w,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: ColorsManager.darkorange,
                  size: 20,
                ),
              ),
              title: Text('Category', style: TextStyles.font22gunmetalblueBold),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 14.0),
                  child: IconButton(
                    icon: const Icon(Icons.notifications_none_outlined),
                    onPressed: () {},
                  ),
                ),
              ],
              toolbarHeight: 100.h,
              flexibleSpace: Container(
                height: 158,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFF2F2FF),
                      Color(0xfff1868A),
                      Color(0xFFF02926),
                    ],
                    stops: [0.0, 53.85, 50.00],
                  ),
                ),
              ),

              elevation: 0,
            ),

            CategorisPositioned(),
          ],
        ),
      ),
    );
  }
}
