import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:tnp/modals/job.dart';
import 'package:tnp/widgets/icon_text.dart';
import 'package:tnp/widgets/themes.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showTime;
  final int salary;
  final String deadline;
  JobItem(this.job,
      {this.showTime = false, this.salary = 0, this.deadline = ''});

  get color => null;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Image.asset(job.logoUrl),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      hintText: job.company,
                    )),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  job.isMark ? Icons.bookmark : Icons.bookmark_outline,
                  color: job.isMark ? MyThemes.blueColor : Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            job.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(
                Icons.attach_money_sharp,
                job.salary,
              ),
              if (showTime) IconText(Icons.access_time_outlined, job.time),
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
    );
  }
}
