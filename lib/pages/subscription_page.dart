import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/shorts_video.dart';
import '../components/top_logo.dart';
import '../components/usual_video.dart';
import '../style/style.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {

  List name = ['Ilm nuri','DILIME',"Flutter",'NAJOT TALIM','TEMURBEK','XUSHNUDBK',"SUBYEKTIV"];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopLogo(),
              8.verticalSpace,
              Row(
                children: [
                  SizedBox(
                    height: 85.h,
                    width: MediaQuery.of(context).size.width - 56,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 12),
                        scrollDirection: Axis.horizontal,
                        itemCount: name.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 56,
                                    width: 56,
                                    margin: EdgeInsets.only(right: 16),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Style.darkGrey
                                    ),
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
                                      border: Border.all(color: Style.whiteColor)
                                    ),
                                  ))
                                ],
                              ),
                              14.verticalSpace,
                              Container(
                                width: 56,
                                  child: Text(name[index],style: Style.textStyleThin(textColor: Style.darkGrey),overflow: TextOverflow.ellipsis,))
                            ],
                          );
                        }),
                  ),
                  16.horizontalSpace,
                  Text('All',style: Style.textStyleNormal(size: 16,textColor: Style.blue),),
                  16.horizontalSpace,
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 12, right: 12, bottom: 8),
                child: Divider(
                  color: Style.greyBorder,
                ),
              ),
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
              12.verticalSpace,
              //UsualVideo(),
              //UsualVideo(),
            ],
          ),
        ),
      ),
    );
  }
}
