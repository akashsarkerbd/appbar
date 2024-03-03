import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MysnackBar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akash'),
        centerTitle: true,
        toolbarOpacity: 1,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                MysnackBar("search here", context);
              },
              icon: Icon(Icons.search))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "contrat"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MysnackBar("Its is a Home ", context);
          }
          if (index == 1) {
            MysnackBar("Its is a Profile ", context);
          }
          if (index == 2) {
            MysnackBar("Its is a Contract ", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("SArker")),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                MysnackBar("Going to home", context);
              },
            ),
            ListTile(
              title: Text("Phone"),
              leading: Icon(Icons.phone),
              onTap: () {},
            ),
            ListTile(
              title: Text("Email"),
              leading: Icon(Icons.email),
            ),
          ],
        ),
      ),
    );
  }
}
