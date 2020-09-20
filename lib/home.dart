
import 'package:disastermanagement/HelpPeople.dart';
import 'package:disastermanagement/help.dart';
import 'package:disastermanagement/notify.dart';
import 'package:disastermanagement/request.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// void main() {
//   runApp(MyApp());
// }

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    setState(() {});
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[Notify(), Help(), HelpPeople()],
          )),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.library_books),
              title: Text('Feeds'),
              activeColor: Colors.black,
              inactiveColor: Colors.black45),
          BottomNavyBarItem(
              icon: Icon(Icons.event_available),
              title: Text('Helps'),
              activeColor: Colors.redAccent[100],
              inactiveColor: Colors.black45),
          BottomNavyBarItem(
              icon: Icon(Icons.launch),
              title: Text('Requests'),
              activeColor: Colors.pink[300],
              inactiveColor: Colors.black45),
        ],
      ),
    );
  }
}