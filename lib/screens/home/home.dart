import 'package:flutter/material.dart';
import 'package:job_finder/widgets/color_back.dart';
import 'package:job_finder/screens/home/widgets/home_appbar.dart';
import 'package:job_finder/screens/home/widgets/job_list.dart';
import 'package:job_finder/screens/home/widgets/search_card.dart';
import 'package:job_finder/screens/home/widgets/tag_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  [
            const ColorBack(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                HomeAppBar(),
                SearchCard(),
                TagList(),
                JobList()
              ],
            ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
        onPressed: (){},
        child: const Icon(Icons.add, color: Colors.white,),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home, size: 25,),),
            BottomNavigationBarItem(label: "Cases", icon: Icon(Icons.cases_outlined, size: 25,),),
            BottomNavigationBarItem(label: "", icon: Text(""),),
            BottomNavigationBarItem(label: "Chat", icon: Icon(Icons.chat_outlined, size: 25,),),
            BottomNavigationBarItem(label: "Person", icon: Icon(Icons.person_outline, size: 25,),),
          ],
        ),
      ),
    );
  }
}