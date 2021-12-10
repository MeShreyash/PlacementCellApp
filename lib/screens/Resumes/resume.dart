import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tnp/screens/Resumes/sample1.dart';
import 'package:tnp/screens/Resumes/sample2.dart';
import 'package:tnp/screens/Resumes/sample3.dart';
import 'package:tnp/screens/login/adminLogin.dart';
import 'package:tnp/widgets/themes.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resources',
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        elevation: 0.00,
        backgroundColor: MyThemes.yellowColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              //
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sample1()),
                );
              },

              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100],
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Color(0xffEEEEEE)),
                        ],
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.file,
                        color: MyThemes.yellowColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Sample Resume 1',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              //
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sample2()),
                );
              },

              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100],
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Color(0xffEEEEEE)),
                        ],
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.file,
                        color: MyThemes.yellowColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Sample Resume 2',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              //
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sample3()),
                );
              },

              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100],
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Color(0xffEEEEEE)),
                        ],
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.file,
                        color: MyThemes.yellowColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Sample Resume 3',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
