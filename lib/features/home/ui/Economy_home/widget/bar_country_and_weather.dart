import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class BarCountryAndWeather extends StatefulWidget {
  const BarCountryAndWeather({super.key});

  @override
  State<BarCountryAndWeather> createState() => _BarCountryAndWeatherState();
}

class _BarCountryAndWeatherState extends State<BarCountryAndWeather> {
  final Map<String, String> _prices = {
    'دولار': '\$4500',
    'يورو': '€5300',
    'بيتكوين': 'BTC 28,000',
    'طقس': '25°C',
    'أسهم': 'S&P 4,200',
    'ذهب': 'Gold 1800\$',
  };

  final List<String> _provinces = [
    'دمشق',
    'حلب',
    'حماة',
    'اللاذقية',
    'حمص',
    'درعا',
    'الرقة',
    'دير الزور',
    'إدلب',
    'القنيطرة',
  ];

  String _selectedProvince = 'دمشق';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorsManager.darkblue, ColorsManager.darkorange],
        ),
      ),
      height: 50.h,
      width: 386.w,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // اسم المحافظة (غير قابل للنقر)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                _selectedProvince,
                style: TextStyles.font16lightgrayreguler,
              ),
            ),

            // أيقونة السهم فقط تفتح القائمة
            PopupMenuButton<String>(
              icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
              onSelected: (value) {
                setState(() {
                  _selectedProvince = value;
                });
              },
              itemBuilder: (context) => _provinces
                  .map(
                    (province) =>
                        PopupMenuItem(value: province, child: Text(province)),
                  )
                  .toList(),
            ),

            const SizedBox(width: 24),

            // باقي الأيقونات مع النصوص
            _buildIconWithText(Icons.attach_money, 'دولار', _prices['دولار']!),
            _buildIconWithText(Icons.euro, 'يورو', _prices['يورو']!),
            _buildIconWithText(
              Icons.currency_bitcoin,
              'بيتكوين',
              _prices['بيتكوين']!,
            ),
            _buildIconWithText(Icons.wb_sunny_outlined, 'طقس', _prices['طقس']!),
            _buildIconWithText(Icons.show_chart, 'أسهم', _prices['أسهم']!),
            _buildIconWithText(Icons.currency_exchange, 'ذهب', _prices['ذهب']!),
          ],
        ),
      ),
    );
  }
}

Widget _buildIconWithText(IconData icon, String label, String price) {
  return Padding(
    padding: const EdgeInsets.only(right: 24),
    child: Row(
      children: [
        Icon(icon, size: 30, color: ColorsManager.white),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyles.font16whitereguler),
            Text(price, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ],
    ),
  );
}
