import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/category.dart';
import '../components/shorts_video.dart';
import '../components/space_between_videos.dart';
import '../components/top_logo.dart';
import '../components/usual_video.dart';
import '../model/search_model.dart';
import '../repository/get_info.dart';
import '../style/style.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Search?>? listOfSearch = [];
  // bool isLoading = true;
  //
  // @override
  // void initState() {
  //   getInformation() async {
  //     isLoading = true;
  //     setState(() {});
  //     listOfSearch?.add(await GetInfo.getSearch());
  //     isLoading = false;
  //     setState(() {});
  //   }
  //   super.initState();
  // }
  GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: Drawer(
        child: Container(
          color: Style.redColor,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopLogo(),
              Category(),
              //UsualVideo(),
              Space(),
              ShortsVideo(),
              Space(),
             // UsualVideo(),
              Space(),
              ShortsVideo()
            ],
          ),
        ),
      ),
    );
  }
}
