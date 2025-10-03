import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/widgets/class_bar_green.dart';
import 'package:stock_market/core/widgets/silver_home_medium_bar.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/widgets/home_medium_bar.dart';
import 'package:stock_market/core/widgets/home_top_bar.dart';
import 'package:stock_market/core/widgets/logos.dart';
import 'package:stock_market/core/widgets/app_drawer.dart';

class Communication extends StatelessWidget {
  const Communication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: ColorsManager.white,

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
                  child: ClassBarGreen(
                    title: 'Communication',
                    icon: Icons.account_box_sharp,
                  ),
                ),

                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 45, 15, 0),
                    child: Table(
                      border: TableBorder.all(
                        color: Colors.black,
                      ), // إضافة حدود للجدول
                      children: const <TableRow>[
                        // الصف الأول: رؤوس الأعمدة
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Column 1 Header',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Column 2 Header',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        // الصفوف الستة للبيانات
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 1, Cell 1'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 1, Cell 2'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 2, Cell 1'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 2, Cell 2'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 3, Cell 1'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 3, Cell 2'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 4, Cell 1'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 4, Cell 2'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 5, Cell 1'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 5, Cell 2'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 6, Cell 1'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Row 6, Cell 2'),
                            ),
                          ],
                        ),
                      ],
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
