import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:you_tube/model/fake_model.dart';
import 'package:you_tube/pages/home_page.dart';

import '../style/style.dart';

class ShortsPage extends StatelessWidget {
  ShortsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          body: PageView.builder(
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 36, bottom: 18),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(FakeModel.photo[index]),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.arrow_back,
                          color: Style.whiteColor,
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Style.whiteColor,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox.shrink(),
                            SizedBox(
                              width: size.width - 100,
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: FakeModel.title[index],
                                    style: Style.textStyleThin(
                                        size: 16, textColor: Style.whiteColor)),
                                TextSpan(
                                    text: " #SADEK #Shorts ",
                                    style: Style.textStyleBold()),
                                TextSpan(
                                    text: "tik tok",
                                    style: Style.textStyleThin(
                                        size: 16, textColor: Style.whiteColor)),
                              ])),
                            ),
                            18.verticalSpace,
                            Row(
                              children: [
                                Container(
                                  height: 28,
                                  width: 28,
                                  decoration: const BoxDecoration(
                                      color: Style.darkGrey,
                                      shape: BoxShape.circle),
                                  child: ClipOval(
                                    child: Image.network(
                                      FakeModel.avatar[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                8.horizontalSpace,
                                Text(
                                  "SADEK Tuts",
                                  style: Style.textStyleNormal(
                                      textColor: Style.whiteColor),
                                ),
                                8.horizontalSpace,
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 8),
                                    decoration: BoxDecoration(
                                        color: Style.redColor,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Text(
                                      "SUBSCRIBE",
                                      style: Style.textStyleBold(),
                                    ))
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Icon(
                              Icons.more_horiz,
                              color: Style.whiteColor,
                            ),
                            24.verticalSpace,
                            const Icon(Icons.thumb_up_sharp,
                                color: Style.whiteColor),
                            8.verticalSpace,
                            Text(
                              "245K",
                              style: Style.textStyleNormal(
                                  size: 12, textColor: Style.whiteColor),
                            ),
                            24.verticalSpace,
                            const Icon(Icons.thumb_down_sharp,
                                color: Style.whiteColor),
                            8.verticalSpace,
                            Text(
                              "Dislike",
                              style: Style.textStyleNormal(
                                  size: 12, textColor: Style.whiteColor),
                            ),
                            24.verticalSpace,
                            const Icon(Icons.comment, color: Style.whiteColor),
                            8.verticalSpace,
                            Text(
                              "952",
                              style: Style.textStyleNormal(
                                  size: 12, textColor: Style.whiteColor),
                            ),
                            24.verticalSpace,
                            const Icon(
                              Icons.share,
                              color: Style.whiteColor,
                            ),
                            8.verticalSpace,
                            Text(
                              "Share",
                              style: Style.textStyleNormal(
                                  size: 12, textColor: Style.whiteColor),
                            ),
                            18.verticalSpace,
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  color: Style.greyMusic,
                                  borderRadius: BorderRadius.circular(4)),
                              child: const Icon(
                                Icons.music_note,
                                color: Style.whiteColor,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
