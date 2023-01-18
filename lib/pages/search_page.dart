import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:you_tube/components/usual_video.dart';
import 'package:you_tube/pages/search_history.dart';

import '../components/category_without_explore.dart';
import '../components/channel.dart';
import '../components/space_between_videos.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 18),
              child: Row(
                children: [
                  InkWell(
                    child: Icon(
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
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                          suffixIcon: textEditingController.text.isEmpty
                              ? SizedBox.shrink()
                              : InkWell(
                                  child: Icon(
                                  Icons.close,
                                  color: Style.darkGrey,
                                ),
                            onTap: (){
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
                  InkWell(
                    child: Container(
                      height: 45,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Style.primaryGrey,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Icon(
                          Icons.keyboard_voice,
                          color: Style.darkGrey,
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SearchHistory(list: listOfSearch)));
                    },
                  )
                ],
              ),
            ),
        textEditingController.text.isEmpty ? Expanded(
            child: ListView.builder(
              itemCount: listOfSearch.length,
                itemBuilder: (context, index){
              return InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                    child: Row(
                  children: [
                    Image.asset('assets/images/history_icon.png'),
                    18.horizontalSpace,
                    Text(listOfSearch[index]),
                    Spacer(),
                    Icon(Icons.open_in_full, color: Style.blackColor,)
                  ],
                )),
                onLongPress: (){
                  LocalStore.removeSearch(listOfSearch[index]);
                  setState(() {

                  });
                },
              );
            })
        )
           : data?.contents?.isEmpty ?? true
                ? CircularProgressIndicator()
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
                                  title:
                                      data?.contents?[index]?.channel?.title ??
                                          "",
                                  username: data?.contents?[index]?.channel
                                          ?.username ??
                                      "",
                                  subscribersText: data?.contents?[index]
                                          ?.channel?.stats?.subscribersText ??
                                      "",
                                )
                              : UsualVideo(
                                  photo: data?.contents?[index]?.video
                                          ?.thumbnails?[0]?.url ??
                                      "",
                                  title: data?.contents?[index]?.video?.title ??
                                      "",
                                  avatar: data?.contents?[index]?.video?.author
                                          ?.avatar?[0]?.url ??
                                      '',
                                  views: data?.contents?[index]?.video?.stats
                                          ?.views
                                          .toString() ??
                                      "",
                                  publishedTimeText: data?.contents?[index]
                                          ?.video?.publishedTimeText ??
                                      "",
                                  name: data?.contents?[index]?.video?.author
                                          ?.title ??
                                      "",
                                );
                        })),
          ],
        ),
      ),
    );
  }
}
