import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List listOfCategory = ['All', 'Mixes', 'Music', 'Graphic', 'News', 'Films', 'Music Videos', 'Cartoons'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/youtube_logo.png'),
                  Row(
                    children: [
                      Image.asset('assets/images/wifi.png'),
                      18.horizontalSpace,
                      Image.asset('assets/images/notifications.png'),
                      18.horizontalSpace,
                      Image.asset('assets/images/search.png'),
                      18.horizontalSpace,
                      Container(
                        height: 24.h,
                        width: 24.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            2.verticalSpace,
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 12, right: 12),
              child: Divider(color: Color(0xffCECECE),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffECECEC)
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/explore.png'),
                        12.horizontalSpace,
                        Text(
                          "Explore", style: GoogleFonts.roboto(color: Color(0xff000000), fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  8.horizontalSpace,
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  8.horizontalSpace,
                  SizedBox(
                    height: 30,
                    width: 200,
                    child: ListView.builder(
                      //physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: listOfCategory.length,
                        itemBuilder: (context, index){
                      return Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          color: index == 0 ? Color(0xff3B3B3B) : Color(0xffECECEC),
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: index == 0 ? Color(0xff6C6C6C) : Color(0xffCECECE))
                        ),
                        child: Text(listOfCategory[index], style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w400, color: index == 0 ? Color(0xffFFFFFF) : Color(0xff000000)),),
                      );
                    }),
                  )
                ],
              ),
            ),
            Container(
              height: 215,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 8),
              child: Row(
                children: [
                  Container(
                    height: 36,
                      width: 36,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                    ),
                  ),
                  12.horizontalSpace,
                  Expanded(child: Text("The Beauty of Existence - Heart Touching Nasheed", style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff0A0A0A)),)),
                  12.horizontalSpace,
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text("19,210,251 viewsJul • 1, 2016", style: GoogleFonts.roboto(color: Color(0xff6C6C6C), fontSize: 12, fontWeight: FontWeight.w500),),
            )
          ],
        ),
      ),
    );
  }
}
