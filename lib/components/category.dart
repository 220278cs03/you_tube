import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/search_page.dart';
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
    'Cartoons',
    'Cooking',
    'Live',
    'Send feedback'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
            padding: const EdgeInsets.only(left: 12),
            scrollDirection: Axis.horizontal,
            itemCount: listOfCategory.length + 2,
            itemBuilder: (context, index) {
              return index == 0
                  ? InkWell(
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Style.primaryGrey),
                        child: Row(
                          children: [
                            Image.asset('assets/images/explore.png'),
                            12.horizontalSpace,
                            Text(
                              "Explore",
                              style: Style.textStyleNormal(
                                  textColor: Style.blackColor),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const SearchPage()));
                      },
                    )
                  : index == 1
                      ? const SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            color: Style.greyBorder,
                          ),
                        )
                      : index == listOfCategory.length + 1
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 12),
                              margin: const EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                color: Style.whiteColor,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Text(
                                listOfCategory[index - 2],
                                style:
                                    Style.textStyleThin(textColor: Style.blue),
                              ))
                          : Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 12),
                              margin: const EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                  color: index == 2
                                      ? Style.useless
                                      : Style.primaryGrey,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                      color: index == 2
                                          ? Style.darkGrey
                                          : Style.greyBorder)),
                              child: Text(listOfCategory[index - 2],
                                  style: Style.textStyleThin(
                                      textColor: index == 2
                                          ? Style.whiteColor
                                          : Style.blackColor)),
                            );
            }),
      ),
    );
  }
}
