import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/helpers/spacing.dart';
import 'package:stock_market/core/theming/colors.dart';

class AuthorsWidget extends StatelessWidget {
  const AuthorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380.h,
      width: 358.w,
      color: ColorsManager.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // عنوان "Authors"
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                child: Text(
                  'Authors',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue[600],
                  ),
                ),
              ),
              Expanded(
                child: Container(height: 1, color: ColorsManager.verylightgray),
              ),
            ],
          ),

          // قائمة أفقية من بطاقات المؤلفين
          SizedBox(
            height: 280.h, // ارتفاع ثابت للقائمة الأفقية
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: authorsData.length,
              itemBuilder: (context, index) {
                final author = authorsData[index];
                return _buildAuthorCard(author);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAuthorCard(AuthorData author) {
    return Container(
      width: 177.w,
      margin: EdgeInsets.only(right: 12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // النص العلوي
          Container(
            width: 177.w,
            padding: EdgeInsets.all(10.w),
            child: Text(
              author.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          verticalSpace(30),
          // الصورة الدائرية
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.h),
            child: CircleAvatar(
              radius: 50.r,
              backgroundImage: author.imageUrl.isNotEmpty
                  ? AssetImage(author.imageUrl)
                  : null,
              backgroundColor: Colors.grey[300],
              child: author.imageUrl.isEmpty
                  ? Icon(Icons.person, size: 30.r, color: Colors.grey[600])
                  : null,
            ),
          ),

          // اسم المؤلف
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              author.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Colors.blue[600],
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // المساحة المرنة لدفع الخط الأحمر إلى الأسفل
          const Spacer(),

          // الخط الأحمر في الأسفل
          Container(
            height: 3.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.r),
                bottomRight: Radius.circular(8.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// نموذج بيانات للمؤلف
class AuthorData {
  final String title;
  final String name;
  final String imageUrl;

  AuthorData({required this.title, required this.name, required this.imageUrl});
}

// بيانات تجريبية للمؤلفين
final List<AuthorData> authorsData = [
  AuthorData(
    title: 'September Wind: Global',
    name: 'Yamen...',
    imageUrl: 'assets/images/person.png', // يمكنك وضع رابط الصورة هنا
  ),
  AuthorData(
    title: 'September Wind: Global',
    name: 'MEHMET...',
    imageUrl: 'assets/images/person_right.png', // يمكنك وضع رابط الصورة هنا
  ),
  AuthorData(
    title: 'October Analysis: Market',
    name: 'AHMED...',
    imageUrl: 'assets/images/person.png', // يمكنك وضع رابط الصورة هنا
  ),
  AuthorData(
    title: 'Financial Report: Q3',
    name: 'SARA...',
    imageUrl: 'assets/images/person_right.png', // يمكنك وضع رابط الصورة هنا
  ),
];
