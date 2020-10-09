

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: MainScreenDrawerMenu(),
    );
  }
}

class MainScreenDrawerMenu extends StatefulWidget {
  @override
  _MainScreenDrawerMenuState createState() => _MainScreenDrawerMenuState();
}

class _MainScreenDrawerMenuState extends State<MainScreenDrawerMenu> {
  String selection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Menu Usage"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            topStaticSection(),
            bottomDynamicSection(),
          ],
        ),
      ),
      body: Center(child: Text(selection,style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),),
    );
  }

  Widget topStaticSection() {
    return UserAccountsDrawerHeader(
      accountName: Text("Bekir DURAN"),
      accountEmail: Text("bekirduran2@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage("assets/images/foto.jpg"),
      ),
    );
  }

  Widget bottomDynamicSection() {
    return Expanded(
        child: ListView(
      children: [
        InkWell(
          child: ListTile(
            leading: Icon(Icons.home_filled),
            title: Text("Home"),
            trailing: Icon(Icons.arrow_right_rounded),
          ),
          onTap: () {
            setState(() {
              selection = "Home";
              Navigator.pop(context);
            });
          },
          splashColor: Colors.blueGrey,
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.electrical_services),
            title: Text("Electronics"),
            trailing: Icon(Icons.arrow_right_rounded),
          ),
          onTap: () {
            setState(() {
              selection = "Electronics";
              Navigator.pop(context);
            });
          },
          splashColor: Colors.blueGrey,
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.event_seat),
            title: Text("Home Stuff"),
            trailing: Icon(Icons.arrow_right_rounded),
          ),
          onTap: () {
            setState(() {
              selection = "Home Stuff";
              Navigator.pop(context);
            });
          },
          splashColor: Colors.blueGrey,
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.drive_eta_rounded),
            title: Text("Vehicles"),
            trailing: Icon(Icons.arrow_right_rounded),
          ),
          onTap: () {
            setState(() {
              selection = "Vehicles";
              Navigator.pop(context);
            });
          },
          splashColor: Colors.blueGrey,
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.handyman_sharp),
            title: Text("Services"),
            trailing: Icon(Icons.arrow_right_rounded),
          ),
          onTap: () {
            setState(() {
              selection = "Services";
              Navigator.pop(context);
            });
          },
          splashColor: Colors.blueGrey,
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Others"),
            trailing: Icon(Icons.arrow_right_rounded),
          ),
          onTap: () {
            setState(() {
              selection = "Others";
              Navigator.pop(context);
            });
          },
          splashColor: Colors.blueGrey,
        ),
        AboutListTile(
          icon: Icon(Icons.account_box_outlined),
          applicationName: "Drawer Menu Usage",
          applicationIcon: Icon(Icons.legend_toggle_outlined),
          applicationLegalese: "Application Legalese",
          applicationVersion: "1.0",
        )
      ],
    ));
  }
}
