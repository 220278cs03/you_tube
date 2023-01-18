import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/top_logo.dart';
import '../style/style.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopLogo(),
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
                itemCount: 10,
                  padding: EdgeInsets.only(left: 12),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 88,
                          width: 148,
                          color: Style.darkGrey,
                          margin: EdgeInsets.only(right: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 14,
                                width: 28,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Style.blackColor.withOpacity(0.64),
                                  borderRadius: BorderRadius.circular(2)
                                ),
                                child: Center(child: Text("0:50", style: Style.textStyleThin(size: 10, textColor: Style.whiteColor),)),
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
                                  Expanded(child: Text("Heart Touching Nasheed #Shorts", style: Style.textStyleThin(size: 14, textColor: Style.primaryBlack),)),
                                  Icon(Icons.more_vert, color: Style.primaryBlack,)
                                ],
                              ),
                              4.verticalSpace,
                              Text("An Naffe", style: Style.textStyleThin(textColor: Style.darkGrey),),
                              8.verticalSpace
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 12, right: 12, bottom: 26),
              child: Divider(
                color: Style.greyBorder,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/history_icon.png'),
                      24.horizontalSpace,
                      Text("History", style: Style.textStyleThin(size: 16, textColor: Style.blackColor),)
                    ],
                  ),
                  33.verticalSpace,
                  Row(
                    children: [
                      Image.asset('assets/images/your_videos_icon.png'),
                      24.horizontalSpace,
                      Text("Your videos", style: Style.textStyleThin(size: 16, textColor: Style.blackColor),)
                    ],
                  ),
                  33.verticalSpace,
                  Row(
                    children: [
                      Image.asset('assets/images/download_icon.png'),
                      24.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Downloads", style: Style.textStyleThin(size: 16, textColor: Style.blackColor),),
                          2.verticalSpace,
                          Text("67 videos", style: Style.textStyleThin(size: 12, textColor: Style.darkGrey),)
                        ],
                      ),
                    ],
                  ),
                  33.verticalSpace,
                  Row(
                    children: [
                      Image.asset('assets/images/your_movies_icon.png'),
                      24.horizontalSpace,
                      Text("Your movies", style: Style.textStyleThin(size: 16, textColor: Style.blackColor),)
                    ],
                  ),
                  33.verticalSpace,
                  Row(
                    children: [
                      Image.asset('assets/images/watch_later_icon.png'),
                      24.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Watch later", style: Style.textStyleThin(size: 16, textColor: Style.blackColor),),
                          2.verticalSpace,
                          Text("4 unwatched videos", style: Style.textStyleThin(size: 12, textColor: Style.darkGrey),)
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 12, right: 12, bottom: 20),
              child: Divider(
                color: Style.greyBorder,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Playlists", style: Style.textStyleNormal(size: 16, textColor: Style.blackColor),),
                      Row(
                        children: [
                          Text("Recents added", style: Style.textStyleThin(size: 14, textColor: Style.primaryBlack),),
                          12.horizontalSpace,
                          Icon(Icons.keyboard_arrow_down, color: Style.blackColor,)
                        ],
                      )
                    ],
                  ),
                  22.verticalSpace,
                  Row(
                    children: [
                      Icon(Icons.add, color: Style.blue,),
                      32.horizontalSpace,
                      Text("New Playlist", style: Style.textStyleThin(size: 16, textColor: Style.blue),)
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
                          Text("Liked videos", style: Style.textStyleThin(size: 16, textColor: Style.blackColor),),
                          2.verticalSpace,
                          Text("50 videos", style: Style.textStyleThin(size: 12, textColor: Style.darkGrey),)
                        ],
                      ),
                    ],
                  )

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
