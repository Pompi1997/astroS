import 'dart:ui';
import 'package:astromobile/astroprofile.dart';
import 'package:astromobile/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'consulthistory.dart';
import 'dailyhoroscope.dart';
import 'wallet.dart';
import 'login.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: IconButton(
            onPressed: () => _scaffoldKey.currentState!.openDrawer(),
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          title: const Text('AstroAuro', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.filter_alt_outlined, color: Colors.black)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.black))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: const Image(
                        image: AssetImage('assets/profile.png'),
                        width: 70.0,
                        height: 70.0,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
              ListTile(
                title: Text('Wallet Transactions'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Previous Sessions History'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Raise Support Ticket'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Live Sessions'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Chat with Astrologers'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Astrology Blogs'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Notifications'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CupertinoSearchTextField(
                      borderRadius: BorderRadius.circular(50),
                      placeholder: "Search for an Astrologer",
                    ),
                  ),

                  Container(
                    // color: Colors.white,
                    height: 200,
                    width: 360,
                    margin: EdgeInsets.all(10.0),
                    child: ImageSlideshow(
                      width: 300,
                      initialPage: 0,
                      children: [
                        Image.asset(
                          'assets/1.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/2.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/3.jpg',
                          fit: BoxFit.cover,
                        ),
                      ],
                      autoPlayInterval: 3000,
                      isLoop: true,
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.yellow,
                                child: Image(
                                  height: 50,
                                  width: 50,
                                  image: AssetImage('assets/daily.png'),
                                ),
                              ),
                            ),
                            Text('Horoscope'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.yellow,
                                child: Image(
                                  height: 50,
                                  width: 50,
                                  image: AssetImage('assets/rings.png'),
                                ),
                              ),
                            ),
                            Text('Match Making'),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.yellow,
                              // child: Image.asset('assets/kundli.png'),
                              child: Image(
                                height: 50,
                                width: 50,
                                image: AssetImage('assets/chat.png'),
                              ),
                            ),
                          ),
                          Text('Predictions'),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.yellow,
                              child: Image(
                                height: 50,
                                width: 50,
                                image: AssetImage('assets/daily.png'),
                              ),
                            ),
                          ),
                          Text('Find astrologer'),
                        ],
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      height: 250,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 10)),
                              const Text(
                                'Available Astrologers',
                              ),
                              Padding(padding: EdgeInsets.only(right: 170)),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text('View All',
                                      style: TextStyle(color: Colors.black)),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.yellow))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 200,
                                  width: 130,
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    // color: Colors.yellow[100],
                                    decoration: const BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(padding: EdgeInsets.all(10)),
                                        const CircleAvatar(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/profile.png'),
                                            height: 50,
                                          ),
                                        ),
                                        Text('Astro Amit'),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('BOOK CALL',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 200,
                                  width: 130,
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    // color: Colors.yellow[100],
                                    decoration: const BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(padding: EdgeInsets.all(10)),
                                        CircleAvatar(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/profile.png'),
                                            height: 50,
                                          ),
                                        ),
                                        Text('Astro Amit'),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('BOOK CALL',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 200,
                                  width: 130,
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    // color: Colors.yellow[100],
                                    decoration: const BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(padding: EdgeInsets.all(10)),
                                        CircleAvatar(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/profile.png'),
                                            height: 50,
                                          ),
                                        ),
                                        Text('Astro Amit'),
                                        SizedBox(
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            child: Text('BOOK CALL',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.black),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Join Live Session'),
                  ),
                  // Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    height: 150,
                    width: 370,
                    child: Card(
                      color: Colors.yellow,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 90,
                            child: Card(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            width: 90,
                            child: Card(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            width: 90,
                            child: Card(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            width: 90,
                            child: Card(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      height: 250,
                      child: Column(
                        children: [
                          Row(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 10)),
                              const Text(
                                'Vedic Astrologers',
                              ),
                              Padding(padding: EdgeInsets.only(right: 190)),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Categories(),
                                      ),
                                    );
                                  },
                                  child: Text('View All',
                                      style: TextStyle(color: Colors.black)),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.yellow))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 200,
                                  width: 130,
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    // color: Colors.yellow[100],
                                    decoration: const BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(padding: EdgeInsets.all(10)),
                                        CircleAvatar(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/profile.png'),
                                            height: 50,
                                          ),
                                        ),
                                        Text('Astro Amit'),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('BOOK CALL',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 200,
                                  width: 130,
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    // color: Colors.yellow[100],
                                    decoration: const BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(padding: EdgeInsets.all(10)),
                                        CircleAvatar(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/profile.png'),
                                            height: 50,
                                          ),
                                        ),
                                        Text('Astro Amit'),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('BOOK CALL',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 200,
                                  width: 130,
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    // color: Colors.yellow[100],
                                    decoration: const BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(padding: EdgeInsets.all(10)),
                                        CircleAvatar(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/profile.png'),
                                            height: 50,
                                          ),
                                        ),
                                        Text('Astro Amit'),
                                        SizedBox(
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            child: Text('BOOK CALL',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.black),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Find Your Yearly Horoscope',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(20)),
                      Text('Read Blogs'),
                      Padding(padding: EdgeInsets.only(right: 180)),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text('View All',
                              style: TextStyle(color: Colors.black)),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.yellow))
                    ],
                  ),
                  Container(
                      child: SizedBox(
                    height: 180,
                    width: 350,
                    child: Card(
                      color: Colors.white,
                    ),
                  )),

                  BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    // currentIndex: 0,
                    items: [
                      BottomNavigationBarItem(
                        icon: new Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: new Icon(Icons.mic),
                        label: 'Live',
                      ),
                      BottomNavigationBarItem(
                        icon: new Icon(Icons.message),
                        label: 'Chat',
                      ),
                      BottomNavigationBarItem(
                        icon: new Icon(Icons.book),
                        label: 'Blog',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
                      )
                    ],
                  ),
                  //     ElevatedButton(
                  //     onPressed: () {
                  //  Navigator.push( context, MaterialPageRoute( builder: (context) => const AstroProfile()));
                  //     }, child: Text('Astro Profile'),
                  //   ),
                  //   ElevatedButton(
                  //     onPressed: () {
                  //  Navigator.push( context, MaterialPageRoute( builder: (context) => const ConsultHistory()));
                  //     }, child: Text('Consultation History'),
                  //   ),
                  //   ElevatedButton(
                  //     onPressed: () {
                  //  Navigator.push( context, MaterialPageRoute( builder: (context) => const Wallet()));
                  //     }, child: Text('Recharge Wallet'),
                  //   ),
                  //   ElevatedButton(
                  //     onPressed: () {
                  //  Navigator.push( context, MaterialPageRoute( builder: (context) => const DailyHoroscope()));
                  //     }, child: Text('Daily Horoscope'),
                  //   ),
                ],
              )),
        ));
  }
}
