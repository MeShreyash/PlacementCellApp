import 'package:flutter/material.dart';
import 'package:tnp/widgets/themes.dart';

class Bookmark_Page extends StatelessWidget {
  const Bookmark_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bookmark',
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        elevation: 0.00,
        backgroundColor: MyThemes.blueColor,
      ),
      body: SingleChildScrollView(),
    );
  }
}
