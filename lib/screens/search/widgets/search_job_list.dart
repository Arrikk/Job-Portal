import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/widgets/job_item.dart';
import 'package:job_finder/screens/search/widgets/search_job_item.dart';
import 'package:job_finder/widgets/job_detail.dart';

class SearchJobs extends StatelessWidget {
  const SearchJobs({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Job> jobs = Job.generateJobs();
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(25),
        height: double.maxFinite,
        child: ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (_, i) => GestureDetector(
            onTap: () => showModalBottomSheet(
              isScrollControlled: true,
              isDismissible: true,
              context: context,
              builder: ((context) => JobDetail(jobs[i])),
            ),
            child: JobItem(jobs[i], true),
          ),
          separatorBuilder: ((context, index) => const SizedBox(height: 10)),
          itemCount: jobs.length,
        ),
      ),
    );
  }
}
