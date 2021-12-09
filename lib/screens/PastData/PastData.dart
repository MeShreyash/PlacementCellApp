import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tnp/widgets/themes.dart';

class pastData_Page extends StatelessWidget {
  const pastData_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Campus Placements',
        ),
        centerTitle: true,
        //  toolbarHeight: 60.2,
        elevation: 0.00,
        backgroundColor: MyThemes.orangeColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/zomato.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/ibm.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/LnT.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/Deloitte.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/edelweiss.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/HSBC.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/infosys.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/microsoft.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/rbs.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/Reliance.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/Samsung.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/sew.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/Whirlpool.jpg",
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Image.asset(
                "assets/images/rbs.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
