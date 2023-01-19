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
            BottomNavigationBarItem(icon: Image.asset(index == 0 ? 'assets/images/home_icon_focused.png' : 'assets/images/home_icon_unfocused.png'),label: 'Home',),
            BottomNavigationBarItem(icon: Image.asset(index == 1 ? 'assets/images/shorts_logo.png' : 'assets/images/shorts_bottom.png'),label: 'Shorts'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/add_icon.png'),label: '',),
            BottomNavigationBarItem(icon: Image.asset(index == 3 ? 'assets/images/subscription_icon_focused.png' : 'assets/images/subscription_icon_unfocused.png'),label: 'Subscription'),
            BottomNavigationBarItem(icon: Image.asset(index == 4 ? 'assets/images/library_icon_focused.png' : 'assets/images/library_icon_unfocused.png'),label: 'Library'),
          ],
        ),
      ),
    );
  }
}
