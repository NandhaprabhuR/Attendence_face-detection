import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:attendancesystem/home.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';


import 'package:firebase_auth/firebase_auth.dart';
import 'package:attendancesystem/camera.dart';


final user = FirebaseAuth.instance.currentUser;

class MyHomePage1 extends StatefulWidget {
   const MyHomePage1({Key? key}) : super(key: key);


  static const String routeName = "/signup";


  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {

  int _counter = 0;
  List<String> allv=['Home','','',''];
  List<String> selv=['Home','Add','Status','Profile'];

  @override
  Widget build(BuildContext context) {




    PersistentTabController _controller;

    _controller = PersistentTabController();


    return Scaffold(
      body: WillPopScope(
        onWillPop: ()async{

          // if(user!=null &&_controller.index==0){
          //   return false;
          // }
          // print(_controller.index);
          return true;
        },
        child: PersistentTabView(

          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardAppears: true,
          popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
          padding: const EdgeInsets.only(top: 8),
          backgroundColor: Colors.grey.shade900,
          isVisible: true,
          animationSettings: const NavBarAnimationSettings(
            navBarItemAnimation: ItemAnimationSettings( // Navigation Bar's items animation properties.
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimationSettings( // Screen transition animation on change of selected tab.
              animateTabTransition: true,
              duration: Duration(milliseconds: 200),
              screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
            ),
          ),
          confineToSafeArea: true,
          navBarHeight: kBottomNavigationBarHeight,
          // Choose the nav bar style with this property.
        ),
      ),
    );


  }
  List<Widget> _buildScreens() {


    return [
      TakePictureScreen(),Status(),
    ];
  }


  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(

          icon: Icon(Icons.camera_alt),
          title: ("FRA"),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white,
          activeColorSecondary: Colors.black
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.add_chart_sharp),
          title: ("Status"),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white,
          activeColorSecondary: Colors.black
      ),
    ];
  }

}




