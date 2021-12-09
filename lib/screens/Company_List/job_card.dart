import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:tnp/modals/job.dart';
import 'package:tnp/screens/CompanyDetail/jobDetail_Page.dart';
import 'package:tnp/widgets/icon_text.dart';
import 'package:tnp/widgets/themes.dart';

class JobCard extends StatelessWidget {
  Future<void> _showMyDialog(BuildContext context, Job temp) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Company'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Do you want to Delete the card?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Delete'),
              onPressed: () async {
                await FirebaseFirestore.instance
                    .collection('jobs')
                    .doc(job.docId)
                    .delete();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  late final Job job;
  JobCard(this.job);
  String companyName = "";
  String jobProfile = "";
  String salary = "";
  String jobType = "";
  String deadline = "";
  String link = "";
  String description = "";

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
        _showMyDialog(context, job);
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
                  //  width: 290,
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
