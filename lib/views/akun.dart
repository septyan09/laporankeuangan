import 'package:flutter/material.dart';
class Akun extends StatefulWidget {
  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.purple[500],
     appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text('Tentang Aplikasi', style: TextStyle(color: Colors.black),),
            ),
            
          ],
        ),
      ),
    body: Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(child: Image.asset('assets/udb.png', width: 350, height: 350,)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text('Dibuat Oleh: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text('Septyan Budi Fitriyanto', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        ),
        Text('(190103196)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text('Muhammad Luthfi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        ),
        Text('(190103192)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ]
      ),
    ),
    );
  }
}