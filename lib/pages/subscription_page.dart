import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:you_tube/components/category_without_explore.dart';

import '../components/followed_channels.dart';
import '../components/shorts_video.dart';
import '../components/top_logo.dart';
import '../components/usual_video.dart';
import '../components/video.dart';
import '../model/fake_model.dart';
import '../style/style.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopLogo(),
              8.verticalSpace,
              const FollowedChannels(),
              CategoryWithoutExplore(),
              VideoStatic(
                  photo: FakeModel.photo[0],
                  avatar: FakeModel.avatar[0],
                  title: FakeModel.title[0],
                  view: FakeModel.view[0],
                  duration: FakeModel.duration[0]),
              VideoStatic(
                  photo: FakeModel.photo[1],
                  avatar: FakeModel.avatar[1],
                  title: FakeModel.title[1],
                  view: FakeModel.view[1],
                  duration: FakeModel.duration[0]),
              VideoStatic(
                  photo: FakeModel.photo[2],
                  avatar: FakeModel.avatar[2],
                  title: FakeModel.title[2],
                  view: FakeModel.view[2],
                  duration: FakeModel.duration[0]),
              VideoStatic(
                  photo: FakeModel.photo[3],
                  avatar: FakeModel.avatar[3],
                  title: FakeModel.title[3],
                  view: FakeModel.view[3],
                  duration: FakeModel.duration[0]),
              VideoStatic(
                  photo: FakeModel.photo[4],
                  avatar: FakeModel.avatar[4],
                  title: FakeModel.title[4],
                  view: FakeModel.view[4],
                  duration: FakeModel.duration[0]),
            ],
          ),
        ),
      ),
    );
  }
}
