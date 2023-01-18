import 'package:flutter/material.dart';

import '../style/style.dart';

class CategoryWithoutExplore extends StatelessWidget {
  CategoryWithoutExplore({Key? key}) : super(key: key);

  List listOfCategory = [
    'All',
    'Mixes',
    'Music',
    'Graphic',
    'News',
    'Films',
    'Music Videos',
    'Cartoons'
        'Cooking',
    'Live',
    'Settings'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listOfCategory.length,
          padding: EdgeInsets.only(left: 12),
          itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              margin: EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                  color: index==0 ? Style.useless : Style.primaryGrey,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: index == 0 ? Style.darkGrey : Style.greyBorder)
              ),
              child: Center(child: Text(listOfCategory[index],style: Style.textStyleThin(size: 12,textColor: index == 0 ? Style.whiteColor : Style.blackColor),)),
            );
          }),
    );
  }
}
