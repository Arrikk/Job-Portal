import 'package:flutter/material.dart';
import 'package:job_finder/screens/search/search.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: AssetImage('assets/images/search_bg.png'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Fash Search',
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
          const SizedBox(height: 10),
          const Text(
            'You can search quickly for\nthe job you want',
            style: TextStyle(
              height: 1.8,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 30,),
          GestureDetector(
            onTap: (() => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SearchPage(),))),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Image.asset('assets/icons/search.png', width: 20,),
                  const SizedBox(width: 10,),
                  const Text("Search", style: TextStyle(color: Colors.grey, fontSize: 18),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
