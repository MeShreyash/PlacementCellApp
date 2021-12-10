import 'package:flutter/material.dart';
import 'package:tnp/widgets/themes.dart';

class UpdateCard extends StatelessWidget {
  int _index = 0;

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
                'Recent Jobs',
                style: TextStyle(
                    color: MyThemes.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),

          // Center(
          //   child: SizedBox(
          //     width: 300,
          //     height: 170,
          //     child: PageView.builder(
          //       itemCount: 6,
          //       controller: PageController(viewportFraction: 0.85),
          //       onPageChanged: (int index) => setState(() => _index = index),
          //       itemBuilder: (_, i) {
          //         return Transform.scale(
          //           scale: i == _index ? 0.9 : 0.9,
          //           child: Card(
          //             elevation: 6,
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(20),
          //             ),
          //             //  child: Center(),

          //             child: Center(
          //               // child: Container(
          //               //   alignment: Alignment.center,
          //               //   margin: EdgeInsets.only(
          //               //     left: 20,
          //               //     right: 20,
          //               //   ),
          //               //   padding:
          //               //       EdgeInsets.only(left: 20, right: 20, top: 10),
          //               //   child: Image.asset(
          //               //     "assets/images/zomato.jpg",
          //               //   ),
          //               // ),
          //               children:
          //                 [Container(
          //                   alignment: Alignment.center,
          //                   margin: EdgeInsets.only(
          //                     left: 20,
          //                     right: 20,
          //                   ),
          //                   padding:
          //                       EdgeInsets.only(left: 20, right: 20, top: 10),
          //                   child: Image.asset(
          //                     "assets/images/ibm.jpg",
          //                   ),
          //                 ),
          //                 Container(
          //                 alignment: Alignment.center,
          //                 margin: EdgeInsets.only(
          //                   left: 20,
          //                   right: 20,
          //                 ),
          //                 padding:
          //                     EdgeInsets.only(left: 20, right: 20, top: 10),
          //                 child: Image.asset(
          //                   "assets/images/sew.jpg",
          //                 ),
          //               ),
          //               Container(
          //                 alignment: Alignment.center,
          //                 margin: EdgeInsets.only(
          //                   left: 20,
          //                   right: 20,
          //                 ),
          //                 padding:
          //                     EdgeInsets.only(left: 20, right: 20, top: 10),
          //                 child: Image.asset(
          //                   "assets/images/infosys.jpg",
          //                 ),
          //               ),
          //               ],
          //             ),
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // ),

          Center(
            child: SizedBox(
              width: 300,
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/images/zomato.jpg",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/images/ibm.jpg",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/images/infosys.jpg",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/images/sew.jpg",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Row(
          //   children: [
          //     Container(
          //       width: 270,
          //       height: 150,
          //       margin: EdgeInsets.only(top: 5, bottom: 15),
          //       padding: EdgeInsets.symmetric(vertical: 5),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(30),
          //         color: MyThemes.blueColor,
          //       ),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }

  setState(int Function() param0) {}
}
