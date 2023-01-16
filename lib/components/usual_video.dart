import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/style.dart';

class UsualVideo extends StatelessWidget {
  const UsualVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 215,
            color: Style.darkGrey,
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
                ),
                12.horizontalSpace,
                Expanded(
                    child: Text(
                        "The Beauty of Existence - Heart Touching Nasheed",
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
            child: Text("19,210,251 viewsJul • 1, 2016",
                style:
                    Style.textStyleNormal(size: 12, textColor: Style.darkGrey)),
          )
        ],
      ),
    );
  }
}
