import 'package:flutter/material.dart';

import '../bottom_navbar.dart';
import '../utils/app_colors.dart';

class UsersListView extends StatelessWidget {
   UsersListView({super.key});

   List<UserData> usersData = [
    UserData(iconName: 'assets/my_tale.png', userName: "My Tale"),
    UserData(iconName: 'assets/mani.png', userName: "Mani"),
    UserData(iconName: 'assets/Karthick.png', userName: "Karthick"),
    UserData(iconName: 'assets/Vimal.png', userName: "Vimal"),
    UserData(iconName: 'assets/my_tale.png', userName: "Susi"),
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ListView.builder(
                        itemCount: usersData.length,
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: AppColors.listBorderColor,
                                        width: 2),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Image.asset(
                                      usersData[index].iconName,
                                      height: 55,
                                      width: 55,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Text(
                                  usersData[index].userName,
                                  style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                );
  }
}