import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:tnp/modals/job.dart';
import 'package:tnp/screens/CompanyDetail/jobDetail_Page.dart';
import 'package:tnp/widgets/icon_text.dart';
import 'package:tnp/widgets/themes.dart';

class User_JobCard extends StatelessWidget {
  late final Job job;
  User_JobCard(this.job);

  get color => null;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => JobDetail_Page(this.job)),
        );
      },
      onLongPress: () {
        //Delete option
      },
      child: Container(
        width: 270,
        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                

                Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    job.companyName,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.bookmark_outline,
                    size: 26,
                    // job.isMark ? Icons.bookmark : Icons.bookmark_outline,
                    // color: job.isMark ? MyThemes.blueColor : Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(left: 5),
              child: Text(
                job.jobProfile,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  child: IconText(Icons.attach_money_sharp, job.salary),
                ),
                // if (deadline)
                Container(
                    child: IconText(Icons.access_time_outlined, job.jobType)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconText(
                  Icons.calendar_today_rounded,
                  job.deadline,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
