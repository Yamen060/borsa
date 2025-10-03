import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/routing/routes.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class ClassBarGreen extends StatelessWidget {
  final String title;
  final IconData icon;
  const ClassBarGreen({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 53.h,
            // تم إزالة width: 402.w, لأن Expanded سيتولى تحديد العرض
            color: ColorsManager.darkgreen,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // الجزء الأيسر: أيقونة ونص "About Us"
                Row(
                  children: [
                    Icon(icon, color: ColorsManager.white, size: 20),
                    const SizedBox(width: 8.0),
                    Text(title, style: TextStyles.font16WhiteBold),
                  ],
                ),
                // الجزء الأيمن: زر "Home page" مع أيقونة المنزل
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes. screenhome);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // خلفية الزر بيضاء
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // حواف دائرية
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    minimumSize:
                        Size.zero, // لإزالة الحد الأدنى للحجم الافتراضي
                    tapTargetSize: MaterialTapTargetSize
                        .shrinkWrap, // لجعل حجم الزر يلتف حول المحتوى
                  ),
                  child: Row(
                    mainAxisSize:
                        MainAxisSize.min, // لجعل الـ Row يأخذ أقل مساحة ممكنة
                    children: [
                      Text('Home page', style: TextStyles.font12greenMedium),
                      const SizedBox(width: 8), // مسافة بين النص والأيقونة
                      Icon(
                        Icons.home,
                        color: ColorsManager.darkgreen,
                      ), // أيقونة المنزل
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
