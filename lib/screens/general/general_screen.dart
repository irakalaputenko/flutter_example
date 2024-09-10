import 'package:flutter/material.dart';
import 'package:vandal/screens/catalog/catalog_screen.dart';
import 'package:vandal/screens/favorites/favorites_screen.dart';
import 'package:vandal/screens/general/widgets/bottom_bar.dart';
import 'package:vandal/screens/home/home_screen.dart';
import 'package:vandal/screens/menu/menu_screen.dart';
import 'package:vandal/screens/shop/shop_screen.dart';
import 'package:vandal/utils/app_colors.dart';

enum MainPageTab {
  home,
  catalog,
  shop,
  favorites,
  menu,
}

class MainPage extends StatefulWidget {
  const MainPage({required this.tab, super.key});

  final MainPageTab tab;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late MainPageTab tab;

  @override
  void initState() {
    tab = widget.tab;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MainPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.tab != widget.tab) {
      setState(() {
        tab = widget.tab;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: _getScreen(),
            ),
            BottomBar(
              tab: tab,
              onPressed: (value) {
                setState(() {
                  tab = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _getScreen() {
    switch (tab) {
      case MainPageTab.home:
        return const HomeScreen();
      case MainPageTab.catalog:
        return const CatalogScreen();
      case MainPageTab.shop:
        return const ShopScreen();
      case MainPageTab.favorites:
        return const FavoritesScreen();
      case MainPageTab.menu:
        return const MenuScreen();
    }
  }
}
