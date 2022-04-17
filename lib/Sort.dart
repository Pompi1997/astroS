import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  const Sort({Key? key}) : super(key: key);

  @override
  State<Sort> createState() => _SortState();
}

class _SortState extends State<Sort> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return Container(
        height: 500,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Sort & Filter"),
                  ),
                ],
              ),
              Column(
                children: [
                  CloseButton(onPressed: (() {})),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          // Row(
          //   children: [
          //     Column(
          //       children: [
          //         ListTile(
          //           title: Text("Sort By"),
          //         ),
          //         ListTile(
          //           title: Text("Skill"),
          //         ),
          //         ListTile(
          //           title: Text("Language"),
          //         ),
          //         ListTile(
          //           title: Text("Gender"),
          //         ),
          //       ],
          //     )
          //   ],
          // ),
          // // VerticalDivider(
          //   color: Colors.black,
          //   thickness: 2,
          // ),
        ]));
  }
}


//  int _selectedIndex = 0;
//     return Scaffold(
//       body: Row(
//         children: <Widget>[
//           NavigationRail(
//             selectedIndex: _selectedIndex,
//             onDestinationSelected: (int index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//             labelType: NavigationRailLabelType.selected,
//             destinations: const <NavigationRailDestination>[
//               NavigationRailDestination(
//                 icon: Icon(Icons.favorite_border),
//                 selectedIcon: Icon(Icons.favorite),
//                 label: Text('First'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.bookmark_border),
//                 selectedIcon: Icon(Icons.book),
//                 label: Text('Second'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.star_border),
//                 selectedIcon: Icon(Icons.star),
//                 label: Text('Third'),
//               ),
//             ],
//           ),
//           const VerticalDivider(thickness: 1, width: 1),
//           // This is the main content.
//           Expanded(
//             child: Center(
//               child: Text('hello'),
//             ),
//           )
//         ],
//       ),
//     );
