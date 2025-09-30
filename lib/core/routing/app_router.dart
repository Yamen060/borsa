import 'package:flutter/material.dart';
import 'package:stock_market/features/home/ui/Agenda_home/Agenda_home.dart';
import 'package:stock_market/features/home/ui/Commodity_Home/commodity_home.dart';
import 'package:stock_market/features/home/ui/Crypto_market_Home/Crypto_market_Home.dart';
import 'package:stock_market/features/home/ui/Economy_home/Economy_home.dart';
import 'package:stock_market/features/home/ui/Company_news_home/company_news.dart';
import 'package:stock_market/features/home/ui/Exchange_home/Exchange.dart';
import 'package:stock_market/features/home/ui/Gallery_home/gallery_home.dart';
import 'package:stock_market/features/home/ui/Puplic_offering_Home/Puplic_offering_Home.dart';
import 'package:stock_market/features/home/ui/home_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/Exchange':
        return MaterialPageRoute(builder: (_) => const Exchange());
      case '/Company_News':
        return MaterialPageRoute(builder: (_) => const CompanyNews());
      case '/Agenda_Home':
        return MaterialPageRoute(builder: (_) => const AgendaHome());
      case '/Economy_Home':
        return MaterialPageRoute(builder: (_) => const EconomyHome());
      case '/Puplic_offering_Home':
        return MaterialPageRoute(builder: (_) => const PuplicOfferingHome());
      case '/Crypto_market_Home':
        return MaterialPageRoute(builder: (_) => const CryptoMarketHome());
     
      case '/Commodity_Home':
        return MaterialPageRoute(builder: (_) => const CommodityHome());
     
      case '/Gallery_Home':
        return MaterialPageRoute(builder: (_) => const GalleryHome());                                                
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
