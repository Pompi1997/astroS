import 'package:flutter/material.dart';

class AstroProfile extends StatefulWidget {
  const AstroProfile({Key? key}) : super(key: key);

  @override
  State<AstroProfile> createState() => _AstroProfileState();
}

class _AstroProfileState extends State<AstroProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.yellow,
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              tooltip: 'Share',
              onPressed: () {},
            ),
          ]),
      body: Container(
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20.0),
                child: Image(
                  image: AssetImage('assets/profile.png'),
                  width: 90.0,
                  height: 90.0,
                  fit: BoxFit.cover,
                )),
            Card(
                color: Colors.yellow[50],
                child: Column(
                  children: [
                    const InkWell(
                      child: SizedBox(
                        width: 350,
                        height: 40,
                        child: Text('Astro Amit', textAlign: TextAlign.center),
                      ),
                    ),
                    Text('Category: Vedic'),
                    Text('Languages: English, Hindi'),
                    Text('Experience: 7 years'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          child: Text('Chat'),
                        ),
                        FloatingActionButton.small(
                          backgroundColor: Colors.black,
                          onPressed: () {},
                          child:
                              Icon(Icons.call, size: 25, color: Colors.white),
                        ),
                        FloatingActionButton.small(
                          backgroundColor: Colors.black,
                          onPressed: () {},
                          child: Icon(Icons.video_call_rounded,
                              size: 25, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )),
            const Text('About Me', textAlign: TextAlign.right),
            Card(
              color: Colors.yellow[50],
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                child: const SizedBox(
                  width: 350,
                  height: 180,
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      textAlign: TextAlign.center),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
