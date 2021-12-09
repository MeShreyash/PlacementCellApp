import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tnp/modals/job.dart';
import 'package:tnp/widgets/icon_text.dart';

class JobDetail extends StatelessWidget {
  final Job job;
  JobDetail(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        height: 550,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 5,
              width: 60,
              color: Colors.grey.withOpacity(0.3),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  job.companyName,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Icon(
            //       job.isMark ? Icons.bookmark : Icons.book_online_outlined,
            //       color: job.isMark
            //           ? Theme.of(context).primaryColor
            //           : Colors.black,
            //     ),
            //     Icon(Icons.more_horiz_outlined),
            //   ],
            // ),
            SizedBox(height: 20),
            Text(
              job.jobProfile,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconText(Icons.attach_money_sharp, job.salary),
                IconText(Icons.access_time_outlined, job.jobType),
                IconText(Icons.calendar_today_rounded, job.deadline),
              ],
            ),
            SizedBox(height: 30),
            Container(
              child: Text(job.link),
            ),
            SizedBox(height: 30),
            Text(
              'Requirement',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Text(job.description),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 25),
                height: 45,
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {},
                  child: Text("Apply Now"),
                ))
          ],
        )));
  }
}
