import 'package:flutter/material.dart';
import 'package:momen/constants/app_assets.dart';
import 'package:momen/features/account/page/account_screen.dart';
import 'package:momen/features/cart/page/cart_screen.dart';
import 'package:momen/features/explore/page/explore_screen.dart';
import 'package:momen/features/favourite/page/favourite_screen.dart';
import 'package:momen/features/shop/page/shop_screen.dart';
import 'package:momen/utiles/app_colors.dart';
import 'package:momen/widgets/custom_svg_image.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: CustomSvgImage(path: AppAssets.shopIconSVG),
              activeIcon: CustomSvgImage(
                path: AppAssets.shopIconSVG,
                color: AppColors.greenColor,
              ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgImage(path: AppAssets.exploreIconSVG),
              activeIcon: CustomSvgImage(
                path: AppAssets.exploreIconSVG,
                color: AppColors.greenColor,
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgImage(path: AppAssets.cartIconSVG),
              activeIcon: CustomSvgImage(
                path: AppAssets.cartIconSVG,
                color: AppColors.greenColor,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgImage(path: AppAssets.favouriteIconSVG),
              activeIcon: CustomSvgImage(
                path: AppAssets.favouriteIconSVG,
                color: AppColors.greenColor,
              ),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgImage(path: AppAssets.accountIconSVG),
              activeIcon: CustomSvgImage(
                path: AppAssets.accountIconSVG,
                color: AppColors.greenColor,
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
