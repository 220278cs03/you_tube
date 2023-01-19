import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/style.dart';

class UsualVideo extends StatelessWidget {
  String photo;
  String title;
  String avatar;
  String views;
  String publishedTimeText;
  String name;
  String duration;

  UsualVideo(
      {Key? key,
      required this.photo,
      required this.title,
      required this.avatar,
      required this.views,
      required this.publishedTimeText,
      required this.name,
      required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 215,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Style.darkGrey,
                image: DecorationImage(
                    image: NetworkImage(photo), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Style.blackColor.withOpacity(0.64),
                      borderRadius: BorderRadius.circular(2)),
                  child: Text(
                    duration,
                    style: Style.textStyleThin(
                        size: 10, textColor: Style.whiteColor),
                  ),
                ),
                const SizedBox.shrink()
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 8),
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Style.darkGrey),
                  child: ClipOval(
                    child: Image.network(avatar),
                  ),
                ),
                12.horizontalSpace,
                Expanded(child: Text(title, style: Style.textStyleNormal())),
                12.horizontalSpace,
                const Icon(
                  Icons.more_vert,
                  color: Style.primaryBlack,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text("${name} • ${views} views • ${publishedTimeText}",
                style:
                    Style.textStyleNormal(size: 12, textColor: Style.darkGrey)),
          )
        ],
      ),
    );
  }
}
