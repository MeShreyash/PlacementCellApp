import 'package:flutter/material.dart';
import 'package:tnp/widgets/themes.dart';

class FAQ_Page extends StatelessWidget {
  const FAQ_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FAQs',
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        elevation: 0.00,
        backgroundColor: MyThemes.greenColor,
      ),
      body: SingleChildScrollView(),
    );
  }
}
