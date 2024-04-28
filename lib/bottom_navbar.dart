import 'dart:ui';

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:internshala/utils/app_colors.dart';

import 'widgets/header_layout.dart';
import 'widgets/listItemWidget.dart';
import 'widgets/searchBarWidget.dart';
import 'widgets/users_listView.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          items: [
            const CurvedNavigationBarItem(
              child: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Image.asset(
                'assets/safari.png',
                height: 19,
                width: 19,
              ),
              label: 'Feed',
            ),
            const CurvedNavigationBarItem(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              label: 'Add',
            ),
            CurvedNavigationBarItem(
              child: Image.asset(
                'assets/person.png',
                height: 19,
                width: 19,
              ),
              label: 'Feed',
            ),
            CurvedNavigationBarItem(
              child: Image.asset(
                'assets/chat.png',
                height: 19,
                width: 19,
              ),
              label: 'Personal',
            ),
          ],
          color: AppColors.navBarBackgroundColor,
          buttonBackgroundColor: Colors.pink,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 500),
          onTap: (index) {},
          letIndexChange: (index) => true,
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 340.0,
                bottom: TabBar(
                  labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  indicatorColor: AppColors.pinkThemeColor,
                  labelColor: AppColors.pinkThemeColor,
                  unselectedLabelColor: AppColors.navBarBackgroundColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabAlignment: TabAlignment.fill,
                  tabs: [
                    Tab(
                      text: ' Make Friends ',
                    ),
                    Tab(text: ' Soulmate '),
                  ],
                  controller: controller,
                ),
                pinned: false,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeaderView(),
                        const SearchBarWidget(),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Status",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: AppColors.txtColor,
                                fontSize: 18),
                          ),
                        ),
                        UsersListView(),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListItemWidget();
                }),
          ),
        ),
      ),
    );
  }
}

class UserData {
  final String iconName;
  final String userName;

  UserData({required this.iconName, required this.userName});
}

