import 'package:flutter/material.dart';
import 'package:tnp/widgets/themes.dart';

class SearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 5, left: 25, right: 25),
      padding: EdgeInsets.only(top: 14, bottom: 14, right: 15, left: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.grey.shade300,
          )),
      child: Row(
        children: [
          Icon(
            Icons.search_outlined,
          ),
          SizedBox(width: 2),
          Text(
            'Search',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
