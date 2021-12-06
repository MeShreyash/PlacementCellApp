import 'package:flutter/material.dart';
import 'package:tnp/widgets/themes.dart';

class UpdateCard extends StatelessWidget {
  const UpdateCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10),
              Text(
                'Updates',
                style: TextStyle(
                    color: MyThemes.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 270,
                height: 150,
                margin: EdgeInsets.only(top: 5, bottom: 15),
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: MyThemes.blueColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
