import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/category.dart';
import '../components/shorts_video.dart';
import '../components/space_between_videos.dart';
import '../components/top_logo.dart';
import '../components/usual_video.dart';
import '../components/video.dart';
import '../model/fake_model.dart';
import '../model/search_model.dart';
import '../repository/get_info.dart';
import '../style/style.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopLogo(),
              Category(),
              VideoStatic(
                photo: FakeModel.photo[0],
                avatar: FakeModel.avatar[0],
                title: FakeModel.title[0],
                view: FakeModel.view[0],
                duration: FakeModel.duration[0],
              ),
              const Space(),
              ShortsVideo(),
              const Space(),
              VideoStatic(
                  photo: FakeModel.photo[1],
                  avatar: FakeModel.avatar[1],
                  title: FakeModel.title[1],
                  view: FakeModel.view[1],
                  duration: FakeModel.duration[1]),
              VideoStatic(
                  photo: FakeModel.photo[2],
                  avatar: FakeModel.avatar[2],
                  title: FakeModel.title[2],
                  view: FakeModel.view[2],
                  duration: FakeModel.duration[2]),
              VideoStatic(
                  photo: FakeModel.photo[3],
                  avatar: FakeModel.avatar[3],
                  title: FakeModel.title[3],
                  view: FakeModel.view[3],
                  duration: FakeModel.duration[3]),
              const Space(),
              ShortsVideo(),
              const Space(),
              VideoStatic(
                  photo: FakeModel.photo[4],
                  avatar: FakeModel.avatar[4],
                  title: FakeModel.title[4],
                  view: FakeModel.view[4],
                  duration: FakeModel.duration[4]),
            ],
          ),
        ),
      ),
    );
  }
}
