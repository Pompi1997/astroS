import 'package:flutter/material.dart';
class ConsultHistory extends StatefulWidget {
  const ConsultHistory({ Key? key }) : super(key: key);

  @override
  State<ConsultHistory> createState() => _ConsultHistoryState();
}

class _ConsultHistoryState extends State<ConsultHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultation History'),
      )
    );
  }
}