
import 'package:flutter/material.dart';
import 'package:projekmakanan/model/resep.api.dart';
import 'package:projekmakanan/model/resep.dart';
import 'package:projekmakanan/views/detail_resep.dart';
import 'package:projekmakanan/views/widget/resep_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Resep> _resep;
  bool  _isLoading = true;

@override
void initState(){
  super.initState();
  getResep();
}

Future<void> getResep() async{
  _resep = await  ResepApi.getResep();
  setState(() {
    _isLoading  = false;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu, color: Colors.black,),
            
            SizedBox(width: 10),
            Text('Resep Makanan', style: TextStyle(color: Colors.black),),
            
          ],
        ),
      ),
      body: _isLoading 
      ? Center(child: CircularProgressIndicator())
      : Container(
        decoration: BoxDecoration(color: Colors.white ),
        child: ListView.builder(
          itemCount: _resep.length,
          itemBuilder: (context,index){
            return GestureDetector (
              child: ResepCard(
                title: _resep[index].name,
                coockTime: _resep[index].totalTime,
                rating: _resep[index].rating.toString(),
                thumbnailUrl: _resep[index].images,
                videoUrl: _resep[index].videoUrl,
                ),
                onTap: () => {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => DetailResep(
                      name: _resep[index].name,
                     totalTime: _resep[index].totalTime,
                     rating: _resep[index].rating.toString(),
                      images: _resep[index].images,
                      description:_resep[index].description,
                      videoUrl: _resep[index].videoUrl,
                    ),)
                    )
                },
            );
          },
        ),
      ));
  }
}
