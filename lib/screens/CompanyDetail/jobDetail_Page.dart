import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tnp/modals/job.dart';
import 'package:tnp/screens/CompanyDetail/widgets/jobDetail_Appbar.dart';
import 'package:tnp/widgets/icon_text.dart';
import 'package:tnp/widgets/themes.dart';

class JobDetail_Page extends StatelessWidget {
  late final Job job;
  JobDetail_Page(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JobDetail_AppBar(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container(
                    //   height: 40,
                    //   width: 40,
                    //   padding: EdgeInsets.all(8),
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //     color: Colors.grey.withOpacity(0.3),
                    //   ),
                    // ),
                    Container(
                      child: FaIcon(
                        FontAwesomeIcons.building,
                        color: MyThemes.blueColor,
                      ),
                    ),
                    Container(
                      width: 260,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        job.companyName,
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark_outline,
                          // job.isMark ? Icons.bookmark : Icons.book_online_outlined,
                          // color: job.isMark
                          //     ? Theme.of(context).primaryColor
                          //     : Colors.black,
                        ),
                        Icon(Icons.more_horiz_outlined),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      child: FaIcon(
                        FontAwesomeIcons.building,
                        color: MyThemes.blueColor,
                      ),
                    ),
                    Container(
                      width: 260,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        job.jobProfile,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 235,
                          child: IconText(
                            Icons.attach_money_sharp,
                            job.salary,
                          ),
                        ),
                        IconText(Icons.access_time_outlined, job.jobType),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        IconText(Icons.calendar_today_rounded, job.deadline),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FaIcon(
                          FontAwesomeIcons.link,
                          color: MyThemes.yellowColor,
                        ),
                      ),
                      Text(
                        job.link,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),

                Container(
                  alignment: Alignment.center,
                  // margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[100],
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 10),
                                    blurRadius: 50,
                                    color: Color(0xffEEEEEE)),
                              ],
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.pen,
                              color: MyThemes.blueColor,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Description ',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 350,
                        height: 120,
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100],
                        ),
                        child: Text(
                          job.description,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),

                // Container(
                //     margin: EdgeInsets.symmetric(vertical: 25),
                //     height: 45,
                //     width: double.maxFinite,
                //     child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //           elevation: 0,
                //           primary: Theme.of(context).primaryColor,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20),
                //           )),
                //       onPressed: () {},
                //       child: Text("Apply Now"),
                //     ))
              ],
            )));
  }
}
