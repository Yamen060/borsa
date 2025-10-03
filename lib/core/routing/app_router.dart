import 'package:flutter/material.dart';
import 'package:stock_market/core/routing/routes.dart';
import 'package:stock_market/features/takesurvy/ui/take_survy_button.dart';
import 'package:stock_market/features/video/ui/video.dart';
import 'package:stock_market/features/agenda/ui/Agenda_home.dart';
import 'package:stock_market/features/authors/ui/Authors.dart';
import 'package:stock_market/features/commodity/ui/commodity_home.dart';
import 'package:stock_market/features/crypto_market/ui/Crypto_market_Home.dart';
import 'package:stock_market/features/economy/ui/Economy_home.dart';
import 'package:stock_market/features/company_news/ui/company_news.dart';
import 'package:stock_market/features/exchange/ui/Exchange.dart';
import 'package:stock_market/features/gallery/ui/gallery_home.dart';
import 'package:stock_market/features/public_offering/ui/Puplic_offering_Home.dart';
import 'package:stock_market/features/home/ui/home_screen.dart';
import 'package:stock_market/features/about_us/ui/about_us.dart';
import 'package:stock_market/features/categories/ui/categories_screen.dart';
import 'package:stock_market/features/communication/ui/communication.dart';
import 'package:stock_market/features/news_page/ui/news_page.dart';
import 'package:stock_market/features/poll/ui/polls.dart';
import 'package:stock_market/features/privacy_policy/ui/privacy_policy.dart';
import 'package:stock_market/features/search/ui/search.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _noAnimationRoute(const HomeScreen());
      case Routes.exchange:
        return _noAnimationRoute(const Exchange());
      case Routes.companynews:
        return _noAnimationRoute(const CompanyNews());
      case Routes.agendahome:
        return _noAnimationRoute(const AgendaHome());
      case Routes.economyhome:
        return _noAnimationRoute(const EconomyHome());
      case Routes.puplicofferinghome:
        return _noAnimationRoute(const PuplicOfferingHome());
      case Routes.cryptomarkethome:
        return _noAnimationRoute(const CryptoMarketHome());
      case Routes.commodityhome:
        return _noAnimationRoute(const CommodityHome());
      case Routes.galleryhome:
        return _noAnimationRoute(const GalleryHome());
      case Routes.authors:
        return _noAnimationRoute(const Authors());
      case Routes.vedio:
        return _noAnimationRoute(const Video());
      case Routes.newspage:
        return _noAnimationRoute(const NewsPage());
      case Routes.search:
        return _noAnimationRoute(Search());
      case Routes.categoriesscreen:
        return _noAnimationRoute(const CategoriesScreen());
      case Routes.aboutus:
        return _noAnimationRoute(const AboutUs());
      case Routes.privacypolicy:
        return _noAnimationRoute(const PrivacyPolicy());
      case Routes.communication:
        return _noAnimationRoute(const Communication());
      case Routes.polls:
        return _noAnimationRoute(const Polls());
      case Routes.takesurvybutton:
        return _noAnimationRoute(const TakeSurvyButton());
      default:
        return _noAnimationRoute(
          Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }

  /// Route بدون أي أنيميشن
  PageRouteBuilder _noAnimationRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    );
  }
}
