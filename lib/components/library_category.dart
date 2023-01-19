import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

class LibraryCategory extends StatelessWidget {
  const LibraryCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 2, left: 12, right: 12, bottom: 26),
          child: Divider(
            color: Style.greyBorder,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/history_icon.png'),
                  24.horizontalSpace,
                  Text(
                    "History",
                    style: Style.textStyleThin(
                        size: 16, textColor: Style.blackColor),
                  )
                ],
              ),
              33.verticalSpace,
              Row(
                children: [
                  Image.asset('assets/images/your_videos_icon.png'),
                  24.horizontalSpace,
                  Text(
                    "Your videos",
                    style: Style.textStyleThin(
                        size: 16, textColor: Style.blackColor),
                  )
                ],
              ),
              33.verticalSpace,
              Row(
                children: [
                  Image.asset('assets/images/download_icon.png'),
                  24.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Downloads",
                        style: Style.textStyleThin(
                            size: 16, textColor: Style.blackColor),
                      ),
                      2.verticalSpace,
                      Text(
                        "67 videos",
                        style: Style.textStyleThin(
                            size: 12, textColor: Style.darkGrey),
                      )
                    ],
                  ),
                ],
              ),
              33.verticalSpace,
              Row(
                children: [
                  Image.asset('assets/images/your_movies_icon.png'),
                  24.horizontalSpace,
                  Text(
                    "Your movies",
                    style: Style.textStyleThin(
                        size: 16, textColor: Style.blackColor),
                  )
                ],
              ),
              33.verticalSpace,
              Row(
                children: [
                  Image.asset('assets/images/watch_later_icon.png'),
                  24.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Watch later",
                        style: Style.textStyleThin(
                            size: 16, textColor: Style.blackColor),
                      ),
                      2.verticalSpace,
                      Text(
                        "4 unwatched videos",
                        style: Style.textStyleThin(
                            size: 12, textColor: Style.darkGrey),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, left: 12, right: 12, bottom: 20),
          child: Divider(
            color: Style.greyBorder,
          ),
        ),
      ],
    );
  }
}
