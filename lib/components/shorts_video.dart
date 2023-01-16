import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

class ShortsVideo extends StatelessWidget {
  const ShortsVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/shorts_logo.png'),
              10.horizontalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shorts",
                      style: Style.textStyleNormal(
                          size: 16, textColor: Style.blackColor)),
                  4.horizontalSpace,
                  Text("BETA",
                      style:
                          Style.textStyleThin(size: 10, textColor: Style.beta)),
                ],
              ),
            ],
          ),
          16.verticalSpace,
          Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 250,
                      width: 150,
                      color: Style.darkGrey,
                      margin: EdgeInsets.only(right: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox.shrink(),
                                Icon(
                                  Icons.more_vert,
                                  color: Style.whiteColor,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, bottom: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation...",
                                  style: Style.textStyleNormal(
                                      size: 12, textColor: Style.whiteColor),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                                8.verticalSpace,
                                Text(
                                  "24M views",
                                  style: Style.textStyleNormal(
                                      size: 10, textColor: Style.whiteColor),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
