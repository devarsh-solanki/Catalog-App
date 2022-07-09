// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/core/settings.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Pages/login_page.dart' show name;
import '../utils/routes.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color:
                      isDark ? Vx.gray800 : Color.fromARGB(223, 85, 52, 175)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile2.png"),
              ),
              accountName: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8,
                ),
              ),
              accountEmail: Text(
                "solankidevarshv2002@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  letterSpacing: 0.8,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(color: context.cardColor),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(CupertinoIcons.home, color: Colors.grey),
                  title: Text(
                    "Home",
                    style: TextStyle(
                      color: context.accentColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                ListTile(
                  leading:
                      Icon(CupertinoIcons.profile_circled, color: Colors.grey),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      color: context.accentColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.mail, color: Colors.grey),
                  title: Text(
                    "Email",
                    style: TextStyle(
                      color: context.accentColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  onTap: () async => {
                    await Future.delayed(Duration(seconds: 1)),
                    Navigator.pushNamed(context, MyRoutes.loginRoute),
                  },
                  leading: Icon(CupertinoIcons.arrowshape_turn_up_left_circle,
                      color: Colors.grey),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      color: context.accentColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 174,
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  onTap: () async => {
                    Navigator.pushNamed(context, MyRoutes.settingsRoute),
                  },
                  leading: Icon(CupertinoIcons.settings, color: Colors.grey),
                  title: Text(
                    "Settings",
                    style: TextStyle(
                      color: context.accentColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
