import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_power_application/drawer_navigation.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: Text('My Profile',
          style: TextStyle(
              color: Colors.pink.shade900,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.pink.shade400,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text('Share',style: TextStyle(color: Colors.black),),
              ),
            ],
            elevation: 2,
            onSelected: (value) {},
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey.shade50,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/butterfly1.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Jeganya V',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.pink.shade500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 20.0,
                  width: 250.0,
                  child: Divider(
                    color: Colors.pink.shade500,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.pink.shade500,
                  ),
                  title: Text(
                    'jeganyav22@gmail.com',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.pink.shade500,
                    ),
                  ),
                ),
                color: Colors.pink.shade100,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.pink.shade500,
                  ),
                  title: Text(
                    'Chennai,Tamil Nadu.',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.pink.shade500,
                    ),
                  ),
                ),
                color: Colors.pink.shade100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
