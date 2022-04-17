import 'package:flutter/material.dart';
class DailyHoroscope extends StatefulWidget {
  const DailyHoroscope({ Key? key }) : super(key: key);

  @override
  State<DailyHoroscope> createState() => _DailyHoroscopeState();
}

class _DailyHoroscopeState extends State<DailyHoroscope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Horoscope'),
      )
    );
  }
}