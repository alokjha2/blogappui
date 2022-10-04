



import 'package:flutter/material.dart';
import 'package:uiblog/constant.dart';
import 'package:uiblog/homeScreen.dart';

class BottomNavBar extends StatefulWidget {
  int currentIndex = 0;
  BottomNavBar(this.currentIndex);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {


  final List<Widget> _screens = [
    MyHomePage(),
    Container(color: Colors.lightBlueAccent,),
    Container(color: Colors.yellow.shade50,),
    Container(color: Colors.black12,),
  ];


void onTabTapped(int index){
  setState(() {
    widget.currentIndex = index;
    
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KButtonBgColor,
      body: _screens[widget.currentIndex],
      bottomNavigationBar: Container(
        height: 64,
        margin: EdgeInsets.all(24),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: KBottomNavBarColor.withOpacity(0.08),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            selectedItemColor: KLightColor,
            unselectedItemColor: KLightColor.withOpacity(0.4),
            onTap: onTabTapped,
            currentIndex: widget.currentIndex,

            items: [
              BottomBar(0, "assets/icons/home.png", "Home",25),
              BottomBar(1, "assets/icons/apps.png", "Home",25),
              BottomBar(2, "assets/icons/find.png", "Home",30),
              BottomBar(3, "assets/icons/me.png", "Home",30),
              
        
          ],
          ),
        ),
      )
    );
  }

  BottomNavigationBarItem BottomBar(int index, String icon, String title, double size) {
    return BottomNavigationBarItem(

          label: title,
          icon: ImageIcon(AssetImage(icon,),size: size,),
          
          );
  }
}