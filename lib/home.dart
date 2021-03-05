import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color favcolor;

  @override
  void initState() {
    super.initState();
    favcolor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Valorant"),
          backgroundColor: Colors.red,
        ),
        body: Stack(
          children: <Widget>[
        
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: [
                    const Color(0xffb71c1c),
                    const Color(0xff000000)
            ], // red to yellow
            tileMode: TileMode.repeated,
          )),
          child: Column(
            children: <Widget>[
              
              Flexible(
                  flex: 2,
                  child: Container(
                      width: 500,
                      child: Image(
                        image: AssetImage("images/g2.png"),
                        fit: BoxFit.fill,
                      ))),
                      
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                            width: 150,
                            margin: EdgeInsets.all(5),
                            child: Image(
                              image: AssetImage("images/g1.jpg"),
                            ))),
                            
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            width: 150,
                            child: Image(
                              image: AssetImage("images/g3.jpg"),
                            ))),
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            width: 150,
                            child: Image(
                              image: AssetImage("images/g4.jpg"),
                            ))),
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            width: 150,
                            child: Image(
                              image: AssetImage("images/g5.jpg"),
                            ))),
                  ],
                ),
              ),
              
              Text(
                'Welcome to Valorant',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              ),

              
              Flexible(
                  flex: 4,
                  child: ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                              "Padukan gaya dan pengalamanmu di panggung kompetitif global. Kamu diberi 13 ronde untuk menyerang dan mempertahankan sisimu dengan keahlian tembak-menembak sengit dan kemampuan taktis. Dengan satu nyawa per ronde, kamu harus berpikir lebih cepat daripada lawan jika ingin tetap hidup. Habisi musuh baik di mode Kompetitif maupun Tanpa Pangkat serta Deathmatch dan Spike Segera.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal, fontSize: 16),
                              textAlign: TextAlign.left),
                          Text(""),
                          Text(""),
                          Text(
                              "Lebih dari sekadar senjata dan peluru, kamu akan memilih Agen bersenjatakan kemampuan yang adaptif, tangkas, dan mematikan untuk membuktikan keahlian menembakmu. Sebagaimana tiap sidik jari selalu berbeda, begitu pula di sini; tak akan ada Agen dengan karakteristik sama.",
                              style: TextStyle(
                                color: Colors.white,
                                  fontWeight: FontWeight.normal, fontSize: 16),
                              textAlign: TextAlign.left),
                          Text(""),
                          Text(""),
                          Text(
                              "Tiap peta adalah panggung tersendiri untuk memamerkan kemampuan berpikir kreatifmu. Dirancang sesuai untuk strategi tim, laga spektakuler, dan momen sengit. Perlihatkan kepiawaian yang akan ditiru oleh pemain lain sampai bertahun-tahun mendatang.",
                              style: TextStyle(
                                color: Colors.white,
                                  fontWeight: FontWeight.normal, fontSize: 16),
                              textAlign: TextAlign.left)
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.topRight,
            child: FloatingActionButton(
          
              onPressed: () {
                setState(() {
                  if (favcolor == Colors.white) {
                    favcolor = Colors.red;
                  } else if (favcolor == Colors.red) {
                    favcolor = Colors.white;
                  }
                });
              },
              
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.favorite,
                color: favcolor,
              ),
          ),
        ),
        
                         
        
    )
        ]));
  }
}
