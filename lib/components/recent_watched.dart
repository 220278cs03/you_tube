import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/fake_model.dart';
import '../style/style.dart';

class RecentWatched extends StatelessWidget {
  const RecentWatched({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Recent",
            style: Style.textStyleThin(size: 16),
          ),
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
              itemCount: 5,
              padding: const EdgeInsets.only(left: 12),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 88,
                      width: 148,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                          color: Style.darkGrey,
                          image: DecorationImage(
                              image: NetworkImage(FakeModel.photo[index]),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 14,
                            width: 28,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Style.blackColor.withOpacity(0.64),
                                borderRadius: BorderRadius.circular(2)),
                            child: Center(
                                child: Text(
                              FakeModel.duration[index],
                              style: Style.textStyleThin(
                                  size: 10, textColor: Style.whiteColor),
                            )),
                          ),
                          Container(
                            height: 4,
                            width: 148,
                            color: Style.redColor,
                          )
                        ],
                      ),
                    ),
                    12.verticalSpace,
                    SizedBox(
                      width: 148,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  FakeModel.title[index],
                                  style: Style.textStyleThin(
                                      size: 14, textColor: Style.primaryBlack),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              const Icon(
                                Icons.more_vert,
                                color: Style.primaryBlack,
                              )
                            ],
                          ),
                          4.verticalSpace,
                          Text(
                            FakeModel.author[index],
                            style:
                                Style.textStyleThin(textColor: Style.darkGrey),
                          ),
                          8.verticalSpace
                        ],
                      ),
                    )
                  ],
                );
              }),
        ),
      ],
    );
  }
}
