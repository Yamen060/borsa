import 'package:flutter/material.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // TODO: إضافة وظيفة المشاركة
      },
      icon: Icon(Icons.share, size: 16, color: ColorsManager.white),
      label: Text("Share", style: TextStyles.font13whitereguler),
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
    );
  }
}
