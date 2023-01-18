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

  UsualVideo({Key? key, required this.photo, required this.title, required this.avatar, required this.views, required this.publishedTimeText, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 215,
            width: MediaQuery.of(context).size.width,
            color: Style.darkGrey,
           child: Image.network(photo, fit: BoxFit.cover,),

          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 8),
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Style.darkGrey),
                  child: ClipOval(
                    child: Image.network(avatar),
                  ),
                ),
                12.horizontalSpace,
                Expanded(
                    child: Text(
                        title,
                        style: Style.textStyleNormal())),
                12.horizontalSpace,
                Icon(
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
