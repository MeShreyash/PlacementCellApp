import 'package:flutter/material.dart';
import 'package:tnp/modals/job.dart';
import 'package:tnp/widgets/icon_text.dart';

class JobDetail_Page extends StatelessWidget {
  late final Job job;
 JobDetail_Page(this.job);

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
//                      child: Image.asset(Job logoUrl),
                ),
                SizedBox(width: 10),
                Text(
                  job.company,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  job.isMark ? Icons.bookmark : Icons.book_online_outlined,
                  color: job.isMark
                      ? Theme.of(context).primaryColor
                      : Colors.black,
                ),
                Icon(Icons.more_horiz_outlined),
              ],
            ),
            SizedBox(height: 20),
            Text(
              job.title,
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
                IconText(Icons.access_time_outlined, job.time),
                IconText(Icons.calendar_today_rounded, job.deadline),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Requirement',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ...job.req
                .map((e) => Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          SizedBox(width: 10),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: Text(
                              e,
                              style: TextStyle(
                                wordSpacing: 2.5,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
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
