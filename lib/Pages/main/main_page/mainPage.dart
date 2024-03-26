import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/Pages/main/main_page/Create/create_page.dart';
import 'package:linkedin/Pages/main/main_page/Jobs/jobs_page.dart';
import 'package:linkedin/Pages/main/main_page/Network/network_page.dart';
import 'package:linkedin/Pages/main/main_page/Notifications/notifications_page.dart';
import 'package:linkedin/Pages/main/main_page/home/home_page.dart';
import 'package:linkedin/Widgets/app_ba_widget.dart';
import 'package:linkedin/theme/styles.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex=0;


  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldState=GlobalKey();
    return Scaffold(
      key: _scaffoldState,
      appBar:  appBarWidget(context,title: _currentIndex==4?"Search Jobs":"Search",onLeadingTap: (){
        setState(() {
          _scaffoldState.currentState!.openDrawer();
          if(_currentIndex==4){

          }
        });
      },isJobTap:false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
        currentIndex: _currentIndex,
        showUnselectedLabels:true,
        selectedLabelStyle: TextStyle(
          color: linkedInBlack000000,),
        selectedItemColor: linkedInBlack000000,
        unselectedItemColor: linkedInMediumGrey86888A,
        unselectedLabelStyle: TextStyle(
          color: linkedInMediumGrey86888A,),

        items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home,),label: "Home",),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.userGroup,),label: "Network"),
        BottomNavigationBarItem(icon: Icon(Icons.add_box,),label: "Post"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,),label: "Notifications"),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.briefcase,),label: "Jobs"),
      ],

      ),
      body: _switchPages(
        _currentIndex
      )
    );
  }
  _switchPages(
      int index
      ){
    switch(index){
      case 0:{
        return HomePage();
      }
      case 1:{
        return NetworkPage();
      }
      case 2:{
        return CreatePage();
      }
      case 3:{
        return NotificationsPage();
      }
      case 4:{
        return JobsPage();
      }

    }
  }
}
