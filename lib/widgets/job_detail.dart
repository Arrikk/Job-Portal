import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/widgets/icon_text.dart';

class JobDetail extends StatelessWidget {
  final Job job;
  const JobDetail(this.job, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: Container(
                color: Colors.grey.withOpacity(0.3),
                height: 5,
                width: 60,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
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
                      style: const TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      job.isMarked ? Icons.bookmark : Icons.bookmark_outline,
                      color: job.isMarked
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                    ),
                    const Icon(Icons.more_horiz_outlined)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              job.title,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconText(Icons.location_on_outlined, job.location),
                IconText(Icons.access_time_outlined, job.time)
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Requirements",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ...job.requirement
                .map(
                  (e) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 10),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 300),
                          child: Text(
                            e,
                            style:
                                const TextStyle(wordSpacing: 2.5, height: 1.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              height: 45,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ), 
                ),
                child: const Text('Apply Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
