import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

class VideoStatic extends StatelessWidget {
  String photo;
  String avatar;
  String title;
  String view;
  String duration;
  VideoStatic({Key? key, required this.photo, required this.avatar, required this.title, required this.view, required this.duration}) : super(key: key);

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
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(photo), fit: BoxFit.cover),
              color: Style.darkGrey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 20,
                  width: 34,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Style.blackColor.withOpacity(0.64),
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                      child: Text(
                        duration,
                        style: Style.textStyleThin(
                            size: 10, textColor: Style.whiteColor),
                      )),
                ),
                SizedBox.shrink()
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
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Style.darkGrey),
                  child: ClipOval(child: Image.network(avatar, fit: BoxFit.cover,)),
                ),
                12.horizontalSpace,
                Expanded(child: Text(title, style: Style.textStyleNormal())),
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
            child: Text(view,
                style:
                    Style.textStyleNormal(size: 12, textColor: Style.darkGrey)),
          )
        ],
      ),
    );
  }
}
