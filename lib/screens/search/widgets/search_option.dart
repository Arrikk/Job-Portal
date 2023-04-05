import 'package:flutter/material.dart';

class SearchOption extends StatefulWidget {
  const SearchOption({super.key});

  @override
  State<SearchOption> createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  final optionMap = <String, bool>{
    'Development': false,
    'Business': true,
    'Data': false,
    'Design': false,
    'Operations': false,
  };
  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    return Container(
      height: 30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        itemBuilder: (_, i) => GestureDetector(
          onTap: () {
            setState(() {
              var current = optionMap[keys[i]] ?? false;
              optionMap[keys[i]] = !current;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: optionMap[keys[i]] != null && optionMap[keys[i]] == true
                  ? Theme.of(context).primaryColor.withOpacity(0.5)
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Theme.of(context).primaryColor.withOpacity(0.3)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  keys[i],
                  style: TextStyle(
                    color: optionMap[keys[i]] != null &&
                            optionMap[keys[i]] == false
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
                if (optionMap[keys[i]] != null && optionMap[keys[i]] == true)
                  Row(
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.close,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  )
              ],
            ),
          ),
        ),
        separatorBuilder: (_, i) => const SizedBox(width: 10),
        itemCount: keys.length,
      ),
    );
  }
}
