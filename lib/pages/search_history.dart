import 'package:flutter/material.dart';

class SearchHistory extends StatefulWidget {
  List<String> list;
  SearchHistory({Key? key, required this.list}) : super(key: key);

  @override
  State<SearchHistory> createState() => _SearchHistoryState();
}

class _SearchHistoryState extends State<SearchHistory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(

          itemBuilder: (context, index){
        return Text(widget.list[index]);
      })
    );
  }
}
