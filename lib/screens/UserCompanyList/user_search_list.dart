import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tnp/modals/job.dart';
import 'package:tnp/screens/Company_List/job_card.dart';

class UserSearchList extends StatelessWidget {
  // final JobList = null;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('jobs').snapshots(),
        builder: (context, snapshot) {
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
                itemBuilder: (context, index) {
                  final job = Job(
                    snapshot.data!.docs[index].get('companyName'),
                    snapshot.data!.docs[index].get('jobProfile'),
                    snapshot.data!.docs[index].get('salary'),
                    snapshot.data!.docs[index].get('jobType'),
                    snapshot.data!.docs[index].get('formLastDate'),
                    snapshot.data!.docs[index].get('link'),
                    snapshot.data!.docs[index].get('description'),
                    snapshot.data!.docs[index].id,
                  );
                  return JobCard(job);
                },
                separatorBuilder: (_, index) => SizedBox(height: 20),
                itemCount: snapshot.data!.docs.length),
          );
        });
  }
}
