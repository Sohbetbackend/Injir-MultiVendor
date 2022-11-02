import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:injir/app/constants/constants.dart';
import 'package:injir/app/modules/cart/views/cart_view.dart';
import 'package:injir/app/modules/categories/views/categories_view.dart';
import 'package:injir/app/modules/profil/views/profil_view.dart';

import '../../favorites/views/favorites_view.dart';
import 'home_view.dart';

class BottomNavBarView extends StatefulWidget {
  @override
  _BottomNavBarViewState createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[HomeView(), CategoriesView(), CartView(), FavoritesView(), ProfilView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: GNav(
              hoverColor: kPrimaryColor2,
              gap: 8,
              tabBorderRadius: 14,
              activeColor: Colors.black,
              iconSize: 28,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Theme.of(context).backgroundColor.withOpacity(0.25),
              color: Colors.black,
              tabs: [
                GButton(
                  icon: _selectedIndex == 0 ? IconlyBold.home : IconlyBroken.home,
                  iconActiveColor: kPrimaryColor,
                  backgroundColor: kPrimaryColor2.withOpacity(0.1),
                  textColor: kPrimaryColor,
                  text: 'home'.tr,
                ),
                GButton(
                  icon: _selectedIndex == 1 ? IconlyBold.category : IconlyBroken.category,
                  iconActiveColor: kPrimaryColor,
                  backgroundColor: kPrimaryColor2.withOpacity(0.1),
                  textColor: kPrimaryColor,
                  text: 'category'.tr,
                ),
                GButton(
                  icon: _selectedIndex == 2 ? IconlyBold.bag : IconlyBroken.bag,
                  iconActiveColor: kPrimaryColor,
                  backgroundColor: kPrimaryColor2.withOpacity(0.1),
                  textColor: kPrimaryColor,
                  text: 'cart'.tr,
                ),
                GButton(
                  icon: _selectedIndex == 3 ? IconlyBold.heart : IconlyBroken.heart,
                  iconActiveColor: kPrimaryColor,
                  backgroundColor: kPrimaryColor2.withOpacity(0.1),
                  textColor: kPrimaryColor,
                  text: 'favorites'.tr,
                ),
                GButton(
                  icon: _selectedIndex == 4 ? IconlyBold.profile : IconlyBroken.profile,
                  iconActiveColor: kPrimaryColor,
                  backgroundColor: kPrimaryColor2.withOpacity(0.1),
                  textColor: kPrimaryColor,
                  text: 'profil'.tr,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
