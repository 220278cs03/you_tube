import 'package:flutter/material.dart';
import '../style/style.dart';
import 'add_page.dart';
import 'home_page.dart';
import 'library_page.dart';
import 'shorts_page.dart';
import 'subscription_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int index = 0;

  List<Widget> listOfPages = [
    HomePage(),
    ShortsPage(),
    AddPage(),
    SubscriptionPage(),
    LibraryPage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: listOfPages[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: index == 1 ? Style.blackColor : Style.whiteColor,
          onTap: (e){
            index=e;
            setState(() {});
          },
          selectedItemColor: Style.blackColor,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: Style.textStyleThin(textColor: index == 1 ? Style.whiteColor : Style.blackColor),
          selectedLabelStyle: Style.textStyleThin(textColor: index == 1 ? Style.whiteColor : Style.blackColor),
          currentIndex: index,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: index == 1 ? Style.whiteColor : Style.blackColor,),label: 'Home',),
            BottomNavigationBarItem(icon: index == 1 ? Image.asset('assets/images/shorts_logo.png') : Image.asset('assets/images/shorts_bottom.png'),label: 'Shorts'),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_sharp,size: 40, color: index == 1 ? Style.whiteColor : Style.blackColor,),label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_sharp, color: index == 1 ? Style.whiteColor : Style.blackColor,),label: 'Subscription'),
            BottomNavigationBarItem(icon: Icon(Icons.video_library_sharp, color: index == 1 ? Style.whiteColor : Style.blackColor,),label: 'Library'),
          ],
        ),
      ),
    );
  }
}
