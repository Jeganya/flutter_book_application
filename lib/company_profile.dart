import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_power_application/drawer_navigation.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: Text(
          'Company Profile',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(30),
                        child: Image.asset('images/logo.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Tidy LifeIndia Pvt Ltd',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.pink.shade500,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: SizedBox(
                    height: 20,
                    width: 250,
                    child: Divider(
                      color: Colors.pink.shade500,
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.pink.shade500,
                    ),
                    title: Text(
                      '+91 8610338291',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.pink.shade500,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  color: Colors.pink.shade100,
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.pink.shade500,
                    ),
                    title: Text(
                      'tidylifeindia@gmail.com',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.pink.shade500,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  color: Colors.pink.shade100,
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  child: ListTile(
                    leading: Icon(
                      Icons.web_asset,
                      color: Colors.pink.shade500,
                    ),
                    title: Text(
                      'www.tidylifeindia@gmail.com',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.pink.shade500,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  color: Colors.pink.shade100,
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  child: ListTile(
                    leading: Icon(
                      Icons.location_city_outlined,
                      color: Colors.pink.shade500,
                    ),
                    title: Text(
                      'No.A3,\nMahalakshmi flats,\nSivagami street,\nNew Perungalathur,\nChennai-600062',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.pink.shade500,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  color: Colors.pink.shade100,
                ),
              ],
            ),
          )),

    );
  }
}