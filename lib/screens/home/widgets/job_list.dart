import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/widgets/job_detail.dart';
import 'package:job_finder/widgets/job_item.dart';

class JobList extends StatelessWidget {
  const JobList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Job> jobList = Job.generateJobs();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          itemBuilder: (_, i) => GestureDetector(
                onTap: () => showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => JobDetail(jobList[i])),
                child: JobItem(jobList[i], false),
              ),
          separatorBuilder: (_, i) => const SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}
