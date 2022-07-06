import 'package:flutter/material.dart';
import 'package:projekmakanan/views/akun.dart';
import 'package:projekmakanan/views/home.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[500],
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(top: 50),
           child: Image.asset('assets/home.png', fit: BoxFit.cover),
         ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: MediaQuery.of(context).size.height *0.52,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.purple[400], borderRadius: BorderRadius.all(Radius.circular(30)) ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Selamat Mencoba", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         GestureDetector(
                           onTap: (){
                             Navigator.push(
                    context,
                     MaterialPageRoute(
                      builder: (context) => HomePage(
                    ),
                    ));
                           },
                      child: Container(
                      child: Column(
                        children: [
                            Image.asset('assets/menu.png', height: 150,),
                            Text("Daftar Resep", textAlign: TextAlign.center,),
                        ],
                      )),
                         ),
                      Container(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                               Navigator.push(
                    context,
                     MaterialPageRoute(
                      builder: (context) => Akun(
                    ),
                    ));
                            },
                              child: Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/about.png"))),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Text("!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black) ,textAlign: TextAlign.center,),
                              )),
                          ),
                          Text("Tentang Aplikasi", textAlign: TextAlign.center,),
                        ],
                      )),
                      ]
                    ),
                  ),
                 
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}