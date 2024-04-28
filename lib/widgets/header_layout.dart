import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import 'profile_pic.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  ProfilePicture(),
                  const SizedBox(width: 8,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Riya William',style: TextStyle(fontFamily: 'Poppins',fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.pinkThemeColor),),
                      Text('Welcome',style: TextStyle(fontFamily: 'Poppins',fontSize: 14,fontWeight: FontWeight.normal),)
                    ],
                  )
                ],),
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 2,color: AppColors.circleColor),shape: BoxShape.circle),child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Image.asset('assets/noti.png',height: 20,width: 20,),
                ),),
              ],
            );
  }
}