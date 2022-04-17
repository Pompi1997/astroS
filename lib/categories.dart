import 'package:flutter/material.dart';

import 'Sort.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Chat with Astrologer"),
            actions: [
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Sort();
                        });
                  },
                  icon: Icon(Icons.filter_alt_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
            ],
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Text("All"),
                Text("Vedic"),
                Text("Numerology"),
                Text("Lal Kitab"),
                Text("Tarot Reading"),
              ],
              labelPadding: EdgeInsets.symmetric(horizontal: 12),
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text("View All Astrologers")),
              Center(child: Text("View Vedic Astrologers")),
              Center(child: Text("View Numerology providing Astrologers")),
              Center(child: Text("Check lal Kitab")),
              Center(child: Text("View Tarot Readers")),
            ],
          ),
        ),
      ),
    );
  }
}
