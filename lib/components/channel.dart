import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:you_tube/components/space_between_videos.dart';

import '../style/style.dart';

class ChannelInfo extends StatelessWidget {
  String avatar;
  String title;
  String username;
  String subscribersText;

  ChannelInfo(
      {Key? key,
      required this.avatar,
      required this.title,
      required this.username,
      required this.subscribersText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Style.darkGrey,
                ),
                child: ClipOval(child: Image.network(avatar)),
              ),
              50.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Style.textStyleThin(
                        size: 18, textColor: Style.blackColor),
                  ),
                  4.verticalSpace,
                  Text(
                    username,
                    style: Style.textStyleThin(
                        size: 14, textColor: Style.darkGrey),
                  ),
                  4.verticalSpace,
                  Text(
                    subscribersText,
                    style: Style.textStyleThin(
                        size: 14, textColor: Style.darkGrey),
                  ),
                  4.verticalSpace,
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Style.primaryBlack),
                    child: Text(
                      "Subscribe",
                      style: Style.textStyleNormal(textColor: Style.whiteColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const Space(),
        12.verticalSpace
      ],
    );
  }
}
