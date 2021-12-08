import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tnp/widgets/themes.dart';

class AddCompany extends StatelessWidget {
  const AddCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Company Details',
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        elevation: 0.00,
        backgroundColor: MyThemes.orangeColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                cursorColor: MyThemes.orangeColor,
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.building,
                    color: MyThemes.orangeColor,
                  ),
                  hintText: "Company Name",
                  // enabledBorder: InputBorder.none,
                  //  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                cursorColor: MyThemes.orangeColor,
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.idCard,
                    color: MyThemes.orangeColor,
                  ),
                  hintText: "Job Profile",
                  // enabledBorder: InputBorder.none,
                  // focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                cursorColor: MyThemes.orangeColor,
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.codeBranch,
                    color: MyThemes.orangeColor,
                  ),
                  hintText: "Branches",
                  // enabledBorder: InputBorder.none,
                  // focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                cursorColor: MyThemes.orangeColor,
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.poll,
                    color: MyThemes.orangeColor,
                  ),
                  hintText: "CG Cut",
                  // enabledBorder: InputBorder.none,
                  // focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                cursorColor: MyThemes.orangeColor,
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.rupeeSign,
                    color: MyThemes.orangeColor,
                  ),
                  hintText: "Salary",
                  // enabledBorder: InputBorder.none,
                  // focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                cursorColor: MyThemes.orangeColor,
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.clock,
                    color: MyThemes.orangeColor,
                  ),
                  hintText: "Job Duration(Intern, FT)",
                  // enabledBorder: InputBorder.none,
                  // focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                cursorColor: MyThemes.orangeColor,
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.link,
                    color: MyThemes.orangeColor,
                  ),
                  hintText: "Form Link",
                  // enabledBorder: InputBorder.none,
                  // focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                cursorColor: MyThemes.orangeColor,
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.hourglassHalf,
                    color: MyThemes.orangeColor,
                  ),
                  hintText: "Form Closing Date",
                  // enabledBorder: InputBorder.none,
                  // focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                cursorColor: MyThemes.orangeColor,
                decoration: InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.clipboard,
                    color: MyThemes.orangeColor,
                  ),
                  hintText: "Description",
                  // enabledBorder: InputBorder.none,
                  // focusedBorder: InputBorder.none,
                ),
              ),
            ),

            //CREATE BUTTON
            GestureDetector(
              onTap: () {
                // Write Click Listener Code Here.
              },
              child: Container(
                alignment: Alignment.center,
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 30),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [(new Color(0xffDD6903)), new Color(0xfffB7D0E)],
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
                  "CREATE",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
