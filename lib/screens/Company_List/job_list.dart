import 'package:flutter/material.dart';
import 'package:tnp/modals/job.dart';
import 'package:tnp/screens/CompanyDetail/job_detail.dart';
import 'package:tnp/screens/Company_List/job_card.dart';
import 'job_card.dart';

class JobList extends StatelessWidget {
  final jobList = null;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 25),
        height: 160,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 25),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  showBottomSheet(
                      context: context,
                      builder: (context) => JobDetail(jobList[index]));
                },
                child: JobCard(jobList[index])),
            separatorBuilder: (_, index) => SizedBox(
                  width: 15,
                ),
            itemCount: jobList.length));
  }
}
