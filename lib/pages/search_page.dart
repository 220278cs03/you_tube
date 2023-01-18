import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:you_tube/components/usual_video.dart';

import '../components/space_between_videos.dart';
import '../model/search_model.dart';
import '../repository/delayed.dart';
import '../repository/get_info.dart';
import '../style/style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List listOfCategory = [
    'All',
    'Mixes',
    'Music',
    'Graphic',
    'News',
    'Films',
    'Music Videos',
    'Cartoons'
        'Cooking',
    'Live',
    'Settings'
  ];

  TextEditingController textEditingController=TextEditingController();

  SearchRepositor? data;
  final _delayed = Delayed(milliseconds: 700);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  InkWell(child: Icon(Icons.arrow_back, color: Style.darkGrey,),
                    onTap: (){
                    Navigator.pop(context);
                    },
                  ),
                  16.horizontalSpace,
                  Expanded(
                    child: TextFormField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide.none),
                        fillColor: Style.primaryGrey,
                        filled: true,
                        hintText: "Search YouTube",
                        hintStyle: Style.textStyleThin(size: 18, textColor: Style.darkGrey),
                        contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 4)
                      ),
                      onChanged: (e){
                        _delayed.run(() async {
                          print(e);
                          data = await SearchRepository.getSearch(name: textEditingController.text);
                          //data.contents.first.type == ContentType.CHANNEL ?
                        });

                      },
                    ),
                  ),
                  8.horizontalSpace,
                  Container(
                    height: 45,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Style.primaryGrey,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(child: Icon(Icons.keyboard_voice, color: Style.darkGrey,),),
                  )
                ],
              ),
            ),
            data?.contents?.isEmpty ?? true ? CircularProgressIndicator() : Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listOfCategory.length,
                          padding: EdgeInsets.only(left: 12),
                          itemBuilder: (context,index){
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              margin: EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                  color: index==0 ? Style.useless : Style.primaryGrey,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(color: index == 0 ? Style.darkGrey : Style.greyBorder)
                              ),
                              child: Center(child: Text(listOfCategory[index],style: Style.textStyleThin(size: 12,textColor: index == 0 ? Style.whiteColor : Style.blackColor),)),
                            );
                          }),
                    ),
                    8.verticalSpace,
                    Space(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Style.darkGrey
                            ),
                          ),
                          50.horizontalSpace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Najot Ta'lim", style: Style.textStyleThin(size: 18, textColor: Style.blackColor),),
                              4.verticalSpace,
                              Text("@najottalim", style: Style.textStyleThin(size: 14, textColor: Style.darkGrey),),
                              4.verticalSpace,
                              Text("147K subscribers", style: Style.textStyleThin(size: 14, textColor: Style.darkGrey),),
                              4.verticalSpace,
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Style.primaryBlack
                                ),
                                child: Text("Subscribe", style: Style.textStyleNormal(textColor: Style.whiteColor),),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Space(),
                    UsualVideo(),
                    UsualVideo(),
                    UsualVideo(),
                    UsualVideo(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
