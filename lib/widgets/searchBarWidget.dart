import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:internshala/utils/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        decoration: BoxDecoration(
                color: Colors.white,
        boxShadow: [
        BoxShadow(
          color: Colors.pink.withOpacity(0.15),
          spreadRadius: 0,
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
        borderRadius: BorderRadius.circular(22),),
      child: Row(
        children: [
        Expanded(
          
          child: TextField(decoration: InputDecoration(
            hintText: 'Search your partner',
            hintStyle: TextStyle(fontFamily: 'Poppins',fontSize: 12,color: AppColors.searchHintColor),
            prefixIcon: Icon(Icons.search,color: AppColors.pinkThemeColor,),
            border: InputBorder.none,prefix: Icon(Icons.search,color: AppColors.pinkThemeColor,)),),),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset('assets/filter.png',height: 24,width: 24,),
        ),
        decoration: BoxDecoration(
          color: AppColors.pinkThemeColor,
          borderRadius: BorderRadius.only(
            
            topRight: Radius.circular(22.0),
            bottomRight: Radius.circular(22.0),
          ),),
      )
      ],),),
    );
  }
}