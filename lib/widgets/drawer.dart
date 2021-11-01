// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media-exp1.licdn.com/dms/image/C5603AQHE4kcpmsYM1g/profile-displayphoto-shrink_200_200/0/1628695083136?e=1637798400&v=beta&t=s80pzsgaBwng1JhjlEoNuE_6rdDLPUAfOfxIcsKrDpc";

    return Drawer(
      child: Column(
        children: [
          Container(
            width: 320,
            height: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2021/06/29/06/14/water-drops-6373296__340.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
            )),
            child: DrawerHeader(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Container(
                      height: 80,
                      width: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                    ),
                  ),
                  Text("Name: Rakib Uddin Rony",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  SizedBox(height: 10),
                  Text("Email: r.rony9966@gmail.com")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



      // child: ListView(
      //   children: [
      //     DrawerHeader(
      //       padding: EdgeInsets.zero,
      //       child: UserAccountsDrawerHeader(
      //         accountEmail: Text(
      //           "r.rony9966@gmail.com",
      //           style:
      //               TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      //         ),
      //         accountName: Text(
      //           "Md. Rakib Uddin",
      //           style:
      //               TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      //         ),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: NetworkImage(imageUrl),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    