import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/search_page.dart';
import '../style/style.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/youtube_logo.png'),
              Row(
                children: [
                  IconButton(
                      splashRadius: 20,
                      onPressed: () {},
                      icon: Image.asset('assets/images/wifi.png')),
                  IconButton(
                      splashRadius: 20,
                      onPressed: () {},
                      icon: Image.asset('assets/images/notifications.png')),
                  IconButton(
                      splashRadius: 20,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const SearchPage()));
                      },
                      icon: Image.asset('assets/images/search.png')),
                  Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Style.darkGrey),
                    child: Image.asset(
                      'assets/images/avatar_photo.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12, right: 12),
          child: Divider(
            color: Style.greyBorder,
          ),
        ),
      ],
    );
  }
}
