import 'package:flutter/material.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class ShowMoreButton extends StatelessWidget {
  const ShowMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, 
            ),
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(const Size(338, 40)),

          backgroundColor: MaterialStateProperty.all(ColorsManager.darkorange),
        ),

        child: Text('SHOW MORE', style: TextStyles.font20lightwhitereguler),
        onPressed: () {},
      ),
    );
  }
}
