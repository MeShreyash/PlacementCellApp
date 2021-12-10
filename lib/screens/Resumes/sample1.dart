import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tnp/widgets/themes.dart';

class Sample1 extends StatelessWidget {
  const Sample1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sample Resume 1',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.00,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              width: 400,
              height: 500,
              child: Hero(
                tag: 'Sample 1',
                child: Image.asset(
                  'assets/images/sample1.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
