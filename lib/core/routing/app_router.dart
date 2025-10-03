import 'package:flutter/material.dart';
import 'package:stock_market/core/routing/routes.dart';
import 'package:stock_market/core/widgets/home_with_medium_bar.dart';
import 'package:stock_market/core/widgets/take_survy_button.dart';
import 'package:stock_market/features/home/ui/widgets/menu/video.dart';
import 'package:stock_market/features/home/ui/widgets/Agenda_home.dart';
import 'package:stock_market/features/home/ui/widgets/menu/Authors.dart';
import 'package:stock_market/features/home/ui/widgets/commodity_home.dart';
import 'package:stock_market/features/home/ui/widgets/Crypto_market_Home.dart';
import 'package:stock_market/features/home/ui/widgets/Economy_home.dart';
import 'package:stock_market/features/home/ui/widgets/company_news.dart';
import 'package:stock_market/features/home/ui/widgets/Exchange.dart';
import 'package:stock_market/features/home/ui/widgets/gallery_home.dart';
import 'package:stock_market/features/home/ui/widgets/Puplic_offering_Home.dart';
import 'package:stock_market/features/home/ui/home_screen.dart';
import 'package:stock_market/features/home/ui/widgets/menu/categories/about_us.dart';
import 'package:stock_market/features/home/ui/widgets/menu/categories_screen.dart';
import 'package:stock_market/features/home/ui/widgets/menu/communication.dart';
import 'package:stock_market/core/widgets/news_page.dart';
import 'package:stock_market/features/home/ui/widgets/menu/polls.dart';
import 'package:stock_market/features/home/ui/widgets/menu/categories/privacy_policy.dart';
import 'package:stock_market/core/widgets/search.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case Routes.exchange:
        return MaterialPageRoute(builder: (context) => Exchange());

      case Routes.companynews:
        return MaterialPageRoute(builder: (context) => CompanyNews());

      case Routes.agendahome:
        return MaterialPageRoute(builder: (context) => AgendaHome());

      case Routes.economyhome:
        return MaterialPageRoute(builder: (context) => EconomyHome());

      case Routes.puplicofferinghome:
        return MaterialPageRoute(builder: (context) => PuplicOfferingHome());

      case Routes.cryptomarkethome:
        return MaterialPageRoute(builder: (context) => CryptoMarketHome());

      case Routes.commodityhome:
        return MaterialPageRoute(builder: (context) => CommodityHome());

      case Routes.galleryhome:
        return MaterialPageRoute(builder: (context) => GalleryHome());

      case Routes.screenhome:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case Routes.search:
        return MaterialPageRoute(builder: (context) => Search());

      case Routes.categoriesscreen:
        return MaterialPageRoute(builder: (context) => CategoriesScreen());

      case Routes.aboutUs:
        return MaterialPageRoute(builder: (context) => AboutUs());

      case Routes.privacypolicy:
        return MaterialPageRoute(builder: (context) => PrivacyPolicy());

      case Routes.polls:
        return MaterialPageRoute(builder: (context) => Polls());

      case Routes.communication:
        return MaterialPageRoute(builder: (context) => Communication());

      case Routes.newspage:
        return MaterialPageRoute(builder: (context) => NewsPage());

      case Routes.authors:
        return MaterialPageRoute(builder: (context) => Authors());

      case Routes.takesurvybutton:
        return MaterialPageRoute(builder: (context) => TakeSurvyButton());

      case Routes.vedio:
        return MaterialPageRoute(builder: (context) => Video());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
