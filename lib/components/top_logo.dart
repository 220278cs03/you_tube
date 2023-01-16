import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/youtube_logo.png'),
              Row(
                children: [
                  Image.asset('assets/images/wifi.png'),
                  18.horizontalSpace,
                  Image.asset('assets/images/notifications.png'),
                  18.horizontalSpace,
                  Image.asset('assets/images/search.png'),
                  18.horizontalSpace,
                  Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Style.darkGrey),
                  )
                ],
              )
            ],
          ),
        ),
        2.verticalSpace,
        Padding(
          padding: const EdgeInsets.only(top: 2, left: 12, right: 12),
          child: Divider(
            color: Style.greyBorder,
          ),
        ),
      ],
    );
  }
}
