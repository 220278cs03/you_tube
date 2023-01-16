import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);

  List listOfCategory = [
    'All',
    'Mixes',
    'Music',
    'Graphic',
    'News',
    'Films',
    'Music Videos',
    'Cartoons'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xffECECEC)),
            child: Row(
              children: [
                Image.asset('assets/images/explore.png'),
                12.horizontalSpace,
                Text(
                  "Explore",
                  style: Style.textStyleNormal(textColor: Style.blackColor),
                ),
              ],
            ),
          ),
          8.horizontalSpace,
          SizedBox(
            height: 20,
            child: VerticalDivider(
              color: Style.greyBorder,
            ),
          ),
          8.horizontalSpace,
          SizedBox(
            height: 30,
            width: 200,
            child: ListView.builder(
                //physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: listOfCategory.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    margin: EdgeInsets.only(right: 4),
                    decoration: BoxDecoration(
                        color: index == 0 ? Style.useless : Style.primaryGrey,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                            color: index == 0
                                ? Style.darkGrey
                                : Style.greyBorder)),
                    child: Text(listOfCategory[index],
                        style: Style.textStyleThin(
                            textColor: index == 0
                                ? Style.whiteColor
                                : Style.blackColor)),
                  );
                }),
          )
        ],
      ),
    );
  }
}
