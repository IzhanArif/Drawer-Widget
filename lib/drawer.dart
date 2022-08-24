// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Drawerr extends StatefulWidget {
  const Drawerr({Key? key}) : super(key: key);

  @override
  State<Drawerr> createState() => _DrawerState();
}

class _DrawerState extends State<Drawerr> {
  String name = "Drawer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const UserAccountsDrawerHeader(
                  accountName: Text("Izhan Arif"),
                  accountEmail: Text("izhanrf@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/profile pic.jpg"),
                  )),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                onTap: () {
                  setState(() {
                    name = "Account Details";
                  });
                  Navigator.pop(context);
                },
                subtitle: Text("Izhan Arif"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text("Email"),
                onTap: () {
                  setState(() {
                    name = "Emails";
                  });
                  Navigator.pop(context);
                },
                subtitle: Text("izhanrf@gmail.com"),
                trailing: Icon(Icons.send),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Contact"),
                onTap: () {
                  setState(() {
                    name = "Contacts";
                  });
                  Navigator.pop(context);
                },
                subtitle: Text("0316-2532565"),
                trailing: Icon(Icons.person_add),
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("Images"),
                onTap: () {
                  setState(() {
                    name = "Images";
                  });
                  Navigator.pop(context);
                },
                subtitle: Text("Pictures"),
                trailing: Icon(Icons.camera),
              ),
            ]),
      ),
      appBar: AppBar(
        title: const Text(
          "Drawer Example",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
          child: Text(
        name,
        style: const TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
      )),
    );
  }
}












// ListTile(
//                 : const Text(
//                   "Account",
//                 ),
//                 onTap: () {
//                   setState(() {
//                     name = "You Pressed Page 1";
//                   });
//                   Navigator.pop(context);
//                 }),
//             ListTile(
//                 title: const Text(
//                   "Page 2",
//                 ),
//                 onTap: () {
//                   setState(() {
//                     name = "You Pressed Page 2";
//                   });
//                   Navigator.pop(context);
//                 }),
//             ListTile(
//                 title: const Text(
//                   "Page 3",
//                 ),
//                 onTap: () {
//                   setState(() {
//                     name = "You Pressed Page 3";
//                   });
//                   Navigator.pop(context);
//                 }),
//             ListTile(
//                 title: const Text(
//                   "Page 4",
//                 ),
//                 onTap: () {
//                   setState(() {
//                     name = "You Pressed Page 4";
//                   });
//                   Navigator.pop(context);
//                 }),