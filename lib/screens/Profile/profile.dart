import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tnp/screens/login/adminLogin.dart';
import 'package:tnp/widgets/themes.dart';

class ProfilePage extends StatelessWidget {
  String name = "";
  String phone = "";
  String email = "";
  String password = "";
  String rollno = "";
  String year = "";
  String branch = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        elevation: 0.00,
        backgroundColor: MyThemes.blueColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Text(user.name),
                Text(user.phone),
                Text('Email id -'),
                Text('Roll No. -'),
                Text('Year -'),
                Text('Branch -'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
