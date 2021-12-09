import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tnp/screens/home/home.dart';
import 'package:tnp/screens/login/login.dart';
import 'package:tnp/screens/login/widgets/branch_Data.dart';
import 'package:tnp/screens/login/widgets/notifiers.dart';
import 'package:tnp/screens/login/widgets/user.dart';
import 'package:tnp/widgets/themes.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  late final User user;

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String name = "";
  String phone = "";
  String email = "";
  String password = "";
  String rollno = "";
  String year = "";
  String branch = "";
  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: MyThemes.blueColor,
                gradient: LinearGradient(
                  colors: [(new Color(0xff30AAB0)), new Color(0xff4FC8CF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 180,
                      width: 180,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 20,
                    ),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  )
                ],
              )),
            ),
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
              child: TextField(
                onChanged: (value) {
                  name = value;
                },
                cursorColor: MyThemes.blueColor,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: MyThemes.blueColor,
                  ),
                  hintText: "Full Name",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                onChanged: (value) {
                  phone = value;
                },
                cursorColor: MyThemes.blueColor,
                decoration: InputDecoration(
                  focusColor: MyThemes.blueColor,
                  icon: Icon(
                    Icons.phone,
                    color: MyThemes.blueColor,
                  ),
                  hintText: "Phone Number",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
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
              child: TextField(
                onChanged: (value) {
                  email = value;
                },
                cursorColor: MyThemes.blueColor,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: MyThemes.blueColor,
                  ),
                  hintText: "Thapar Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                onChanged: (value) {
                  password = value;
                },
                cursorColor: MyThemes.blueColor,
                decoration: InputDecoration(
                  focusColor: MyThemes.blueColor,
                  icon: Icon(
                    Icons.vpn_key,
                    color: MyThemes.blueColor,
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                onChanged: (value) {
                  rollno = value;
                },
                cursorColor: MyThemes.blueColor,
                decoration: InputDecoration(
                  focusColor: MyThemes.blueColor,
                  icon: Icon(
                    Icons.format_list_numbered_outlined,
                    color: MyThemes.blueColor,
                  ),
                  hintText: "Roll Number",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                onChanged: (value) {
                  year = value;
                },
                cursorColor: MyThemes.blueColor,
                decoration: InputDecoration(
                  focusColor: MyThemes.blueColor,
                  icon: Icon(
                    Icons.date_range,
                    color: MyThemes.blueColor,
                  ),
                  hintText: "Year",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _showSingleChoiceDialog(context),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffEEEEEE),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 100,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: TextField(
                  onChanged: (value) {
                    branch = value;
                  },
                  cursorColor: MyThemes.blueColor,
                  decoration: InputDecoration(
                    focusColor: MyThemes.blueColor,
                    icon: FaIcon(
                      FontAwesomeIcons.codeBranch,
                      color: MyThemes.blueColor,
                    ),
                    hintText: "Select Branch",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),

            //BUTTON
            GestureDetector(
              // onTap: () {
              //   FirebaseFirestore.instance.collection('user').add({
              //     'name': name,
              //     'phone': phone,
              //     'email': email,
              //     'password': password,
              //     'rollno': rollno,
              //     'year': year,
              //     'branch': branch,
              //   }).then((value) => Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => StudentLoginScreen()),
              //   ),

              onTap: () {
                FirebaseFirestore.instance.collection('user').doc(email).set({
                  'name': name,
                  'phone': phone,
                  'email': email,
                  'password': password,
                  'rollno': rollno,
                  'year': year,
                  'branch': branch,
                  'isAdmin': false,
                }).then((value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentLoginScreen()));
                });
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [(new Color(0xff30AAB0)), new Color(0xff4FC8CF)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: Text(
                  "REGISTER",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have Already Member?  "),
                  GestureDetector(
                    child: Text(
                      "Login Now",
                      style: TextStyle(color: MyThemes.blueColor),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentLoginScreen()),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showSingleChoiceDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          final _singleNotifier = Provider.of<SingleNotifier>(context);
          return AlertDialog(
            title: Text('Select your Branch'),
            content: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: branches
                      .map((e) => RadioListTile(
                            title: Text(e),
                            value: e,
                            groupValue: _singleNotifier.currentBranch,
                            selected: _singleNotifier.currentBranch == e,
                            onChanged: (value) {
                              _singleNotifier.updateBranch;
                              Navigator.of(context).pop();
                            },
                          ))
                      .toList(),
                ),
              ),
            ),
          );
        },
      );
}
