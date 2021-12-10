import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tnp/screens/home/home.dart';
import 'package:tnp/screens/login/adminLogin.dart';
import 'package:tnp/screens/login/registration.dart';
import 'package:tnp/screens/search/search_page.dart';
import 'package:tnp/widgets/themes.dart';

class StudentLoginScreen extends StatefulWidget {
  const StudentLoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<StudentLoginScreen> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
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
                margin: EdgeInsets.only(top: 50),
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
                  "Student Login",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              )
            ],
          )),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, top: 50),
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
            cursorColor: MyThemes.yellowColor,
            decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: MyThemes.blueColor,
              ),
              hintText: "Enter Email",
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
            cursorColor: MyThemes.yellowColor,
            decoration: InputDecoration(
              focusColor: MyThemes.yellowColor,
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
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              // Write Click Listener Code Here
            },
            child: Text(
              "Forget Password?",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        GestureDetector(
          // onTap: () async {
          //   DocumentSnapshot temp = await FirebaseFirestore.instance
          //       .collection('user')
          //       .doc(email)
          //       .get();
          //   if (temp != null) {
          //     user.name = temp.get('name');
          //     user.email = temp.get('email');
          //     user.phone = temp.get('phone');
          //     user.branch = temp.get('branch');
          //     user.rollno = temp.get('rollno');
          //     user.year = temp.get('year');

          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => HomePage()),
          //     );
          //   }

          //   return;
          // },
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 17),
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
              "LOGIN",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't Have Any Account?  "),
              GestureDetector(
                child: Text(
                  "Register Now",
                  style: TextStyle(color: MyThemes.blueColor),
                ),
                onTap: () {
                  // Write Tap Code Here.
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistrationScreen(),
                      ));
                },
              )
            ],
          ),
        )
      ],
    )));
  }
}
