import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/category.dart';
import '../components/shorts_video.dart';
import '../components/space_between_videos.dart';
import '../components/top_logo.dart';
import '../components/usual_video.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopLogo(),
              Category(),
              UsualVideo(),
              Space(),
              ShortsVideo(),
              Space(),
              UsualVideo(),
              Space(),
              ShortsVideo()
            ],
          ),
        ),
      ),
    );
  }
}
