import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myfall/pages/falText.dart';
import 'package:myfall/pages/grafik.dart';
import 'package:myfall/pages/mainScreen.dart';

class yayBurcuSayfasi extends StatefulWidget {
  const yayBurcuSayfasi({Key? key}) : super(key: key);

  @override
  State<yayBurcuSayfasi> createState() => _yayBurcuSayfasiState();
}

class _yayBurcuSayfasiState extends State<yayBurcuSayfasi> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    CollectionReference musicInfo = _firestore.collection('yazilar');
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Colors.white,
      child: StreamBuilder<QuerySnapshot>(
          stream: musicInfo.snapshots(),
          builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
            //just add this line
            if (asyncSnapshot.data == null)
              return const CircularProgressIndicator();

            List<DocumentSnapshot> docSnap = asyncSnapshot.data.docs;
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: docSnap.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Positioned(
                      top: 100,
                      left: 255,
                      width: 150,
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: MaterialButton(
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  size: 27,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => mainScreen()));
                              },
                            ),
                          ),
                               Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black,
                            ),
                            child: MaterialButton(
                              child: Text(
                                "Burcunuzun Falı",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => falBurc()));
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black,
                            ),
                            child: MaterialButton(
                              child: Text(
                                "İstatistikler",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => MyWidget()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      child: Image.asset('assets/yayBilgi.jpg'),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                      child: Text(
                        '${docSnap[index]["yaziYay"]}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 20),
                      ),
                    ),
                  ],
                );
              },
            );
          }),
    );
  }
}
