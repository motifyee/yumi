import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yumi/app_target.dart';
import 'package:yumi/generated/l10n.dart';
import 'package:yumi/screens/menu.dart';
import 'package:yumi/screens/news.dart';
import 'package:yumi/screens/order_history.dart';
import 'package:yumi/screens/pre_order.dart';
import 'package:yumi/screens/profile.dart';
import 'package:yumi/screens/setting.dart';
import 'package:yumi/statics/theme_statics.dart';

class NavigateOptions {
  static List<NavigateListItem> navigateList = getNavigateList();

  static List<NavigateListItem> getNavigateList() {
    if (AppTarget.user == AppTargetUser.chefs) return navigateListChefs;
    if (AppTarget.user == AppTargetUser.drivers) return navigateListDrivers;
    return navigateListCustomer;
  }

  static List<NavigateListItem> navigateListChefs = [
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/home.svg'),
        selectedIcon: SvgPicture.asset('assets/images/home1.svg'),
        title: S.current.yumi,
        page: NewsScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/profile.svg'),
        selectedIcon: SvgPicture.asset('assets/images/profile1.svg'),
        title: S.current.profile,
        page: const ProfileScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/menu.svg'),
        selectedIcon: SvgPicture.asset('assets/images/menu1.svg'),
        title: S.current.menus,
        page: const MenuScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/pre_order.svg'),
        selectedIcon: SvgPicture.asset('assets/images/pre_order1.svg'),
        title: S.current.preOrder,
        page: const PreOrderScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/setting.svg'),
        selectedIcon: SvgPicture.asset('assets/images/setting1.svg'),
        title: S.current.setting,
        page: const SettingScreen()),
  ];
  static List<NavigateListItem> navigateListDrivers = [
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/home.svg'),
        selectedIcon: SvgPicture.asset('assets/images/home1.svg'),
        title: S.current.yumi,
        page: NewsScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/profile.svg'),
        selectedIcon: SvgPicture.asset('assets/images/profile1.svg'),
        title: S.current.profile,
        page: const ProfileScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/history.svg'),
        selectedIcon: SvgPicture.asset('assets/images/history1.svg'),
        title: S.current.ordersHistory,
        page: const OrderHistoryScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/pre_order.svg'),
        selectedIcon: SvgPicture.asset('assets/images/pre_order1.svg'),
        title: S.current.preOrder,
        page: const PreOrderScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/setting.svg'),
        selectedIcon: SvgPicture.asset('assets/images/setting1.svg'),
        title: S.current.setting,
        page: const SettingScreen()),
  ];
  static List<NavigateListItem> navigateListCustomer = [
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/home.svg'),
        selectedIcon: SvgPicture.asset('assets/images/home1.svg'),
        title: S.current.yumi,
        page: NewsScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/profile.svg'),
        selectedIcon: SvgPicture.asset('assets/images/profile1.svg'),
        title: S.current.profile,
        page: const ProfileScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/menu.svg'),
        selectedIcon: SvgPicture.asset('assets/images/menu1.svg'),
        title: S.current.menus,
        page: const MenuScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/pre_order.svg'),
        selectedIcon: SvgPicture.asset('assets/images/pre_order1.svg'),
        title: S.current.preOrder,
        page: const PreOrderScreen()),
    NavigateListItem(
        icon: SvgPicture.asset('assets/images/setting.svg'),
        selectedIcon: SvgPicture.asset('assets/images/setting1.svg'),
        title: S.current.setting,
        page: const SettingScreen()),
  ];

  static List<Widget> navigationDestination(BuildContext context, int index) {
    return navigateList
        .asMap()
        .map((i, e) => MapEntry(
              i,
              NavigationDestination(
                icon: AnimatedContainer(
                  duration: ThemeSelector.statics.animationDuration,
                  padding: index == i
                      ? const EdgeInsets.only(bottom: 53)
                      : EdgeInsets.zero,
                  child: index == i ? e.selectedIcon : e.icon,
                ),
                label: '',
              ),
            ))
        .values
        .toList();
  }

  static List<Widget> navigationPages() {
    return navigateList.map((e) => e.page).toList();
  }
}

class NavigateListItem {
  Widget icon;
  Widget selectedIcon;
  Widget page;
  String title;

  NavigateListItem(
      {required this.title,
      required this.page,
      required this.icon,
      required this.selectedIcon});
}
