import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/library_category.dart';
import '../components/library_playlist.dart';
import '../components/recent_watched.dart';
import '../components/top_logo.dart';
import '../model/fake_model.dart';
import '../style/style.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TopLogo(),
            RecentWatched(),
            LibraryCategory(),
            LibraryPlaylist()
          ],
        ),
      ),
    );
  }
}
