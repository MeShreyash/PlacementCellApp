import 'package:flutter/material.dart';
import 'package:tnp/modals/job.dart';
import 'package:tnp/screens/Company_List/job_item.dart';

class SearchList extends StatelessWidget {
  final JobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: ListView.separated(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 25,
            ),
            itemBuilder: (context, index) => JobItem(
                  JobList[index],
                  showTime: true,
                ),
            separatorBuilder: (_, index) => SizedBox(height: 20),
            itemCount: JobList.length));
  }
}
