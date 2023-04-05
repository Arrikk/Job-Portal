import 'package:flutter/material.dart';
import 'package:job_finder/screens/search/widgets/search_appbar.dart';
import 'package:job_finder/screens/search/widgets/search_input.dart';
import 'package:job_finder/screens/search/widgets/search_job_list.dart';
import 'package:job_finder/screens/search/widgets/search_option.dart';
import 'package:job_finder/widgets/color_back.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const ColorBack(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SearchAppbar(),
              SearchInput(),
              SearchOption(),
              SearchJobs()
            ],
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (() {})),
    );
  }
}
