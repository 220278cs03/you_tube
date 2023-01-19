import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

class LibraryPlaylist extends StatelessWidget {
  const LibraryPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 32),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Playlists",
                    style: Style.textStyleNormal(
                        size: 16, textColor: Style.blackColor),
                  ),
                  Row(
                    children: [
                      Text(
                        "Recents added",
                        style: Style.textStyleThin(
                            size: 14, textColor: Style.primaryBlack),
                      ),
                      12.horizontalSpace,
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Style.blackColor,
                      )
                    ],
                  )
                ],
              ),
              22.verticalSpace,
              Row(
                children: [
                  const Icon(
                    Icons.add,
                    color: Style.blue,
                  ),
                  32.horizontalSpace,
                  Text(
                    "New Playlist",
                    style: Style.textStyleThin(size: 16, textColor: Style.blue),
                  )
                ],
              ),
              24.verticalSpace,
              Row(
                children: [
                  Image.asset('assets/images/liked_icon.png'),
                  24.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Liked videos",
                        style: Style.textStyleThin(
                            size: 16, textColor: Style.blackColor),
                      ),
                      2.verticalSpace,
                      Text(
                        "50 videos",
                        style: Style.textStyleThin(
                            size: 12, textColor: Style.darkGrey),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
