import 'package:flutter/material.dart';
import 'package:tnp/screens/Notification/notification.dart';
import 'package:tnp/screens/Profile/profile.dart';
import 'package:tnp/screens/Resumes/resume.dart';
import 'package:tnp/screens/UserCompanyList/user_search_page.dart';
import 'package:tnp/screens/home/widgets/FourButton.dart';
import 'package:tnp/screens/home/widgets/UpdateCard.dart';
import 'package:tnp/screens/home/widgets/home_app_bar.dart';
import 'package:tnp/screens/Company_List/job_list.dart';
import 'package:tnp/screens/home/widgets/search_card.dart';
import 'package:tnp/screens/home/widgets/tag_list.dart';
import 'package:tnp/screens/search/search_page.dart';
import 'package:tnp/widgets/themes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),

                SearchCard(),

                UpdateCard(),
                //    TagList(),
                //    JobList(),
                FourButton(),
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: MyThemes.yellowColor,
          elevation: 3,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserSearchPage()),
            );
          },
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: MyThemes.blueColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Icon(
                    Icons.home,
                    size: 40,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Resources',
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResumePage()),
                    );
                  },
                  child: Icon(
                    Icons.file_copy_outlined,
                    size: 40,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Notifications',
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Notification_Page()),
                    );
                  },
                  child: Icon(
                    Icons.notifications_none_outlined,
                    size: 40,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'User',
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child: Icon(
                    Icons.supervised_user_circle_sharp,
                    size: 40,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
