import 'package:flutter/material.dart';
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
    Widget page;

    switch (settings.name) {
      case '/':
        page = const HomeScreen();
        break;
      case '/Exchange':
        page = const Exchange();
        break;
      case '/Company_News':
        page = const CompanyNews();
        break;
      case '/Agenda_Home':
        page = const AgendaHome();
        break;
      case '/Economy_Home':
        page = const EconomyHome();
        break;
      case '/Puplic_offering_Home':
        page = const PuplicOfferingHome();
        break;
      case '/Crypto_market_Home':
        page = const CryptoMarketHome();
        break;
      case '/Commodity_Home':
        page = const CommodityHome();
        break;
      case '/Gallery_Home':
        page = const GalleryHome();
        break;
      case '/Screen_Home':
        page = const HomeScreen();
        break;
      case '/search':
        page = Search();
        break;
      case '/CategoriesScreen':
        page = CategoriesScreen();
        break;
      case '/AboutUs':
        page = AboutUs();
        break;
      case '/PrivacyPolicy':
        page = PrivacyPolicy();
        break;
      case '/Polls':
        page = Polls();
        break;
        case '/Communication':
        page = Communication();
        break;
        case '/NewsPage':
        page = NewsPage();
        break;
        case '/Authors':
        page = Authors();
        break;
        case '/TakeSurvyButton':
        page = TakeSurvyButton();
        break;
         case '/Vedio':
        page = Video();
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: Duration.zero, // يجعل الانتقال فوريًا
      reverseTransitionDuration: Duration.zero, // يجعل العودة فورية أيضًا
    );
  }
}
