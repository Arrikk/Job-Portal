import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/widgets/icon_text.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showTime;
  const JobItem(this.job, this.showTime, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(job.logoUrl),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    job.company,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              Icon(
                job.isMarked ? Icons.bookmark : Icons.bookmark_add_outlined,
                color: job.isMarked
                    ? Theme.of(context).primaryColor
                    : Colors.black,
              )
            ],
          ),
          const SizedBox(height: 15,),
          Text(job.title, style: const TextStyle(fontWeight: FontWeight.bold,),),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(Icons.location_on_outlined, job.location),
              if(showTime) IconText(Icons.access_time_outlined, job.time)
            ],
          )
        ],
      ),
    );
  }
}
