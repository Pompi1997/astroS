import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Wallet extends StatefulWidget {
  const Wallet({ Key? key }) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.yellow,
        title: Text('Recharge Wallet', style: TextStyle(color: Colors.black)),
      ),
      body: 
     
      Container(
        margin: EdgeInsets.all(10.0),
        alignment: Alignment.center,
      child: 
      Column(
        
          children: [
            Text('Select Amount'),
            SizedBox(
              height: 600,
              width: 300,
              child: ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(top: 10),
      height: 50,
      color: Colors.white,
      child: const Center(child: Text('50')),
    ),
    Container(
        margin: EdgeInsets.only(top: 10),
      height: 50,
      color: Colors.white,
      child: const Center(child: Text('100')),
    ),
    Container(
        margin: EdgeInsets.only(top: 10),
      height: 50,
      color: Colors.white,
      child: const Center(child: Text('200')),
    ),
        Container(
        margin: EdgeInsets.only(top: 10),
      height: 50,
      color: Colors.white,
      child: const Center(child: Text('300')),
    ),
        Container(
        margin: EdgeInsets.only(top: 10),
      height: 50,
      color: Colors.white,
      child: const Center(child: Text('500')),
    ),
        Container(
        margin: EdgeInsets.only(top: 10),
      height: 50,
      color: Colors.white,
      child: const Center(child: Text('1000')),
    ),
        Container(
        margin: EdgeInsets.only(top: 10),
      height: 50,
      color: Colors.white,
      child: const Center(child: Text('2000')),
    ),
    Container(
      margin: EdgeInsets.only(top: 30),
      child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom( primary:  Colors.black),child: Text('Proceed to pay')),
    )
  ],
)
            )
            
          ],
        ),
      )
    );
  }
}