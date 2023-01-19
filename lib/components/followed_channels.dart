import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/fake_model.dart';
import '../style/style.dart';

class FollowedChannels extends StatelessWidget {
  const FollowedChannels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 85.h,
          width: MediaQuery.of(context).size.width - 56,
          child: ListView.builder(
              padding: const EdgeInsets.only(left: 12),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          margin: const EdgeInsets.only(right: 16),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Style.darkGrey),
                          child: ClipOval(
                              child: Image.network(
                            FakeModel.avatar[index],
                            fit: BoxFit.cover,
                          )),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 20,
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Style.blue,
                                  border: Border.all(color: Style.whiteColor)),
                            ))
                      ],
                    ),
                    14.verticalSpace,
                    Container(
                        width: 56,
                        child: Text(
                          FakeModel.author[index],
                          style: Style.textStyleThin(textColor: Style.darkGrey),
                          overflow: TextOverflow.ellipsis,
                        ))
                  ],
                );
              }),
        ),
        16.horizontalSpace,
        Text(
          'All',
          style: Style.textStyleNormal(size: 16, textColor: Style.blue),
        ),
        16.horizontalSpace,
      ],
    );
  }
}
