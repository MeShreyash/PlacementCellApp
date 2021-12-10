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
                //Name
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: MyThemes.blueColor,
                      ),
                      SizedBox(width: 7),
                      Text(
                        user.name,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                //Phone No.
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: MyThemes.blueColor,
                      ),
                      SizedBox(width: 7),
                      Text(
                        user.phone,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),

                //EMAIL
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: MyThemes.blueColor,
                      ),
                      SizedBox(width: 7),
                      Text(
                        user.email,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),

                //Roll No.
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.format_list_numbered_outlined,
                        color: MyThemes.blueColor,
                      ),
                      SizedBox(width: 7),
                      Text(
                        user.rollno,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),

                //Year
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.date_range,
                        color: MyThemes.blueColor,
                      ),
                      SizedBox(width: 7),
                      Text(
                        user.year,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                //Branch
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.codeBranch,
                        color: MyThemes.blueColor,
                      ),
                      SizedBox(width: 7),
                      Text(
                        user.branch,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
