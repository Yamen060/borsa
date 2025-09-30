import 'package:flutter/material.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and icon row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('AUTHRS', style: TextStyles.font16violetdBold),
              Icon(Icons.more_horiz, color: Color(0xFF3A1F9C), size: 24),
            ],
          ),

          const SizedBox(height: 16),

          // Card with image and texts
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Circular Image
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    'assets/images/Auther.png',
                  ), // Example image URL
                ),
                const SizedBox(width: 16),
                // Name, line, and subtitle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name with underline
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ahmad Husein',
                            style: TextStyles.font16blackreguler,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4, bottom: 8),
                            height: 2,
                            width: 162,
                            color: ColorsManager.mediumgray.withOpacity(0.4),
                          ),
                        ],
                      ),

                      // Subtitle text
                      Text(
                        'September Wind:\nGlobal Data, Cent...',
                        style: TextStyles.font12darkbold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
