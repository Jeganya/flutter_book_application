import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_power_application/company_profile.dart';
import 'package:time_power_application/personal_profile.dart';
import 'package:time_power_application/pv_quotes_text.dart';
import 'package:time_power_application/pv_theme_text.dart';
import 'package:time_power_application/pv_words_text.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Time power'),
              accountEmail: Text('version 1'),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/brian.gif'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/book1.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: const Text('Quotes'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PVQuotesText()));
              },
            ),
            ListTile(
              title: const Text('Themes'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PVThemeText()));
              },
            ),
            ListTile(
              title: const Text('Words'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PVWordText()));
              },
            ),
            ListTile(
              title: const Text('Personal Profile'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PersonalProfile()));
              },
            ),
            ListTile(
              title: const Text('Company Profile'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CompanyProfile()));
              },
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey.shade50,
      ),
    );
  }
}
