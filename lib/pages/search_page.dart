import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:you_tube/components/usual_video.dart';

import '../components/category_without_explore.dart';
import '../components/channel.dart';
import '../components/space_between_videos.dart';
import '../components/unfocused_tap.dart';
import '../model/search_model.dart';
import '../repository/delayed.dart';
import '../repository/get_info.dart';
import '../store/local_store.dart';
import '../style/style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController textEditingController = TextEditingController();

  SearchRepositor? data;
  final _delayed = Delayed(milliseconds: 700);
  List<String> listOfSearch = [];

  getSearchHistory() async {
    listOfSearch = await LocalStore.getSearch();
  }

  @override
  void initState() {
    getSearchHistory();
    print(listOfSearch);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnUnFocusTap(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 18),
                child: Row(
                  children: [
                    InkWell(
                      child: const Icon(
                        Icons.arrow_back,
                        color: Style.darkGrey,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    16.horizontalSpace,
                    Expanded(
                      child: TextFormField(
                        controller: textEditingController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none),
                          fillColor: Style.primaryGrey,
                          filled: true,
                          hintText: "Search YouTube",
                          hintStyle: Style.textStyleThin(
                              size: 18, textColor: Style.darkGrey),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 4),
                          suffixIcon: textEditingController.text.isEmpty
                              ? const SizedBox.shrink()
                              : InkWell(
                                  child: const Icon(
                                    Icons.close,
                                    color: Style.darkGrey,
                                  ),
                                  onTap: () {
                                    textEditingController.text = "";
                                    setState(() {});
                                  },
                                ),
                        ),
                        onChanged: (e) {
                          data?.contents?.clear();
                          setState(() {});
                          _delayed.run(() async {
                            print(e);
                            data = await SearchRepository.getSearch(
                                name: textEditingController.text);
                            LocalStore.setSearch(textEditingController.text);
                            setState(() {});
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
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                        child: Icon(
                          Icons.keyboard_voice,
                          color: Style.darkGrey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              12.verticalSpace,
              textEditingController.text.isEmpty
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: listOfSearch.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 20),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          'assets/images/history_icon.png'),
                                      18.horizontalSpace,
                                      Text(listOfSearch[index]),
                                      const Spacer(),
                                      IconButton(
                                          onPressed: () {
                                            textEditingController.text =
                                                listOfSearch[index];
                                          },
                                          icon: const Icon(
                                            Icons.open_in_full,
                                            color: Style.blackColor,
                                          ))
                                    ],
                                  )),
                              onLongPress: () {
                                showDialog<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(listOfSearch[index]),
                                      content: const Text(
                                          'Delete from search history?'),
                                      actions: <Widget>[
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
                                          ),
                                          child: const Text('Cancel'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
                                          ),
                                          child: const Text('Delete'),
                                          onPressed: () {
                                            LocalStore.removeSearch(
                                                listOfSearch[index]);
                                            listOfSearch.removeAt(index);
                                            Navigator.of(context).pop();
                                            setState(() {});
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            );
                          }))
                  : data?.contents?.isEmpty ?? true
                      ? const Padding(
                          padding: EdgeInsets.only(
                            top: 270,
                          ),
                          child: CircularProgressIndicator())
                      : Expanded(
                          child: ListView.builder(
                              itemCount: data?.contents?.length,
                              itemBuilder: (context, index) {
                                return data?.contents?[index]?.type ==
                                        ContentType.CHANNEL
                                    ? ChannelInfo(
                                        avatar: data?.contents?[index]?.channel
                                                ?.avatar?[0]?.url ??
                                            "",
                                        title: data?.contents?[index]?.channel
                                                ?.title ??
                                            "",
                                        username: data?.contents?[index]
                                                ?.channel?.username ??
                                            "",
                                        subscribersText: data
                                                ?.contents?[index]
                                                ?.channel
                                                ?.stats
                                                ?.subscribersText ??
                                            "",
                                      )
                                    : UsualVideo(
                                        photo: data?.contents?[index]?.video
                                                ?.thumbnails?[0]?.url ??
                                            "",
                                        title: data?.contents?[index]?.video
                                                ?.title ??
                                            "",
                                        avatar: data?.contents?[index]?.video
                                                ?.author?.avatar?[0]?.url ??
                                            '',
                                        views: data?.contents?[index]?.video
                                                ?.stats?.views
                                                .toString() ??
                                            "",
                                        publishedTimeText: data
                                                ?.contents?[index]
                                                ?.video
                                                ?.publishedTimeText ??
                                            "",
                                        name: data?.contents?[index]?.video
                                                ?.author?.title ??
                                            "",
                                        duration: data?.contents?[index]?.video
                                                ?.lengthSeconds
                                                .toString() ??
                                            "",
                                      );
                              })),
            ],
          ),
        ),
      ),
    );
  }
}
