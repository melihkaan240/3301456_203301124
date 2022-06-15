import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myfall/burcBilgileri/akrep.dart';
import 'package:myfall/burcBilgileri/aslan.dart';
import 'package:myfall/burcBilgileri/balik.dart';
import 'package:myfall/burcBilgileri/basak.dart';
import 'package:myfall/burcBilgileri/boga.dart';
import 'package:myfall/burcBilgileri/ikizler.dart';
import 'package:myfall/burcBilgileri/koc.dart';
import 'package:myfall/burcBilgileri/kova.dart';
import 'package:myfall/burcBilgileri/oglak.dart';
import 'package:myfall/burcBilgileri/terazi.dart';
import 'package:myfall/burcBilgileri/yay.dart';
import 'package:myfall/burcBilgileri/yengec.dart';
import 'package:myfall/pages/settings.dart';
String burc= '';
String burcImage='';
class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Image.asset('assets/koc.png',height: 45,),
          centerTitle: true,
          automaticallyImplyLeading: false,
          


          actions: [

            IconButton(
              icon: Icon(
                Icons.settings,size: 27,
              ),
              onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SettingsScreen()));},
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1),
            ),


          ],
        ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  /* style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  autofocus: false,*/
                  onDoubleTap: () {
                    setState(() {
                      burc = 'koç';
                      burcImage ='koc.png';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => kocBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("KOÇ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/koc.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  
                  onHorizontalDragUpdate: (e) {
                    setState(() {
                      burc = 'akrep';
                      burcImage ='akrepBilgi.png';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const AkrepBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("AKREP",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/akrep.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                
                  
                  onLongPress: () {
                      setState(() {
                      burc = 'aslan';
                      burcImage ='aslanBilgii.png';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const aslanBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("ASLAN",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/aslan.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  
                  onVerticalDragStart: (e) {
                      setState(() {
                      burc = 'balık';
                      burcImage ='balikBilgi.png';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const balikBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("BALIK",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/balik.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  onLongPressUp: () {
                      setState(() {
                      burc = 'başak';
                      burcImage ='basakBilgi.webp';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const basakBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("BAŞAK",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/basak.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
                   Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  onLongPressUp: () {
                      setState(() {
                      burc = 'boğa';
                      burcImage ='bogaBilgi.jpg';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const bogaBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("BOĞA",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/boga.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
                   Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  onLongPressUp: () {
                      setState(() {
                      burc = 'ikizler';
                      burcImage ='ikizlerBilgi.jpg';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const ikizlerBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("İKİZLER",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/ikizler.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
                 Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  onLongPressUp: () {
                      setState(() {
                      burc = 'kova';
                      burcImage ='kovaBilgi.webp';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const kovaBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("KOVA",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/kova.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
               Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  onLongPressUp: () {
                      setState(() {
                      burc = 'oğlak';
                      burcImage ='oglakBilgi.webp';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const oglakBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("OĞLAK",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/oglak.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  onLongPressUp: () {
                      setState(() {
                      burc = 'terazi';
                      burcImage ='teraziBilgi.jpg';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const teraziBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("TERAZİ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/terazi.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
               Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  onLongPressUp: () {
                      setState(() {
                      burc = 'yay';
                      burcImage ='yayBilgi.jpg';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const yayBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("YAY",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/yay.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: GestureDetector(
                  onLongPressUp: () {
                      setState(() {
                      burc = 'yengeç';
                      burcImage ='yengecBilgi.png';
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const yengecBurcuSayfasi()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text("YENGEÇ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/yengec.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
