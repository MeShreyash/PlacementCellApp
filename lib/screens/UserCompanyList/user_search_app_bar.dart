import 'package:flutter/material.dart';
import 'package:tnp/screens/Add_Company/add_company.dart';
import 'package:tnp/widgets/themes.dart';

class UserSearchAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recruiting',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Companies',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    )),
              ],
            ),
          ),

//Select the bottom given button for ADMIN ONLY - Condition left to be applied.
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   // crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     ElevatedButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => AddCompany()),
          //         );
          //       },
          //       style: ElevatedButton.styleFrom(
          //         elevation: 0,

          //         padding: EdgeInsets.fromLTRB(4, 4, 8, 4),
          //         primary: MyThemes.blueColor, // <-- Button color
          //         onPrimary: Colors.white, // <-- Splash color
          //       ),
          //       child: Row(
          //         children: [
          //           Icon(
          //             Icons.add_rounded,
          //             color: Colors.white,
          //           ),
          //           Text(
          //             'Add',
          //             style: TextStyle(
          //               fontSize: 20.0,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
