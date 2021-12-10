import 'package:flutter/material.dart';
import 'package:tnp/screens/Notification/notification.dart';
import 'package:tnp/screens/Profile/profile.dart';
import 'package:tnp/screens/drawer/drawer.dart';
import 'package:tnp/widgets/themes.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 18,
        right: 18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Row(children: [
          //   IconButton(
          //     onPressed: () {
          //       Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => MyDrawer()),
          //   );
          //     },
          //     icon: new Icon(Icons.menu_rounded, size: 30),
          //   ),
          // ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Shreyash',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  )),
            ],
          ),
          SizedBox(
            width: 55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Notification_Page()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30, right: 10),
                  transform: Matrix4.rotationZ(100),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 7),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(5),
                      primary: MyThemes.blueColor, // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                    child: Text(
                      'S',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
