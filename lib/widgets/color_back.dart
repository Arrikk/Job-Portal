import 'package:flutter/material.dart';

class ColorBack extends StatelessWidget {
  const ColorBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: Container(color: const Color.fromARGB(255, 244, 243, 243),),),
        Expanded(flex: 1, child: Container(color: Colors.grey.withOpacity(0.2),),)
      ],
    );
  }
}