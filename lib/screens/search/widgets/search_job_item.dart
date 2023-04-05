import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';

class SearchJobItem extends StatelessWidget {
  final Job job;
  const SearchJobItem(this.job, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(job.title),
    );
  }
}
