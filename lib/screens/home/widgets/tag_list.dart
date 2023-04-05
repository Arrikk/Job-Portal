import 'package:flutter/material.dart';
import 'package:job_finder/colors.dart';

class TagList extends StatefulWidget {
  const TagList({super.key});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final tagList = <String>["All", "⚡️ Popular", "⭐️ Featured"];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, i) => GestureDetector(
                onTap: () => setState(() => selected = i),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: selected == i ? Theme.of(context).primaryColor : Colors.white
                    ),
                    color: selected == i ? Theme.of(context).primaryColor.withOpacity(0.2) : Colors.white
                  ),
                  child: Text(tagList[i]),
                ),
              ),
          separatorBuilder: (_, i) => const SizedBox(
                width: 15,
              ),
          itemCount: tagList.length),
    );
  }
}
