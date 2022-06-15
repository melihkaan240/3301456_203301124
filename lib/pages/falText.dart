import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:myfall/pages/mainScreen.dart';

List<String> yanitlar = [
  'TIKLA FALIN GELSİN',
  'aşk ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :  Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
  'aşk ile ilgili tahmini falı ve tavsiyeleri şu şekildedir :  Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
  'aşk ile ilgili tahmini falı ve tavsiyeleri şu şekildedir :  Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
  'aşk ile ilgili tahmini falı ve tavsiyeleri şu şekildedir :  Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
  'aşk ile ilgili tahmini falı ve tavsiyeleri şu şekildedir :  Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
  'para ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :  Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
  'para ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :  Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
  'para ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :  Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
  'para ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :  Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
  'para ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :  Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
  'günlük tavsiye ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :   Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
  'günlük tavsiye ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :   Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
  'günlük tavsiye ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :   Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
  'günlük tavsiye ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :   Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
  'günlük tavsiye ile ilgili gelecek tahmini falı ve tavsiyeleri şu şekildedir :   Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et',
  'özel seçtiğim motive edici bir söz : Çatışman ne kadar zorsa, zaferin de o kadar şereflidir! - Thomas Paine',
  'özel seçtiğim motive edici bir söz : Yüzüstü yere serilseniz bile, hala ileriye doğru hareket ediyorsunuzdur. - Victor Kiam',
  'özel seçtiğim motive edici bir söz : Senin almaya cesaret edemediğin riskleri alanlar, senin yaşamak istediğin hayatı yaşarlar. - Sokrates',
  'özel seçtiğim motive edici bir söz : İstatistik Kuyruklu yalandır - Ahmet Cevahir Çınar',
  'özel seçtiğim motive edici bir söz : İyi bir yazılımcı olabilmek için OOP bilmelisiniz arkadaşlar - Ahmet Cevahir Çınar',
];
int falIndex = 0;
int yanitIndex = 0;
int deger = 2;
class falBurc extends StatefulWidget {
  const falBurc({Key? key}) : super(key: key);

  @override
  _falBurcState createState() => _falBurcState();
}

class _falBurcState extends State<falBurc> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('TIKLA FALIN GELSİN..'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: screen.width,
        height: screen.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$burcImage'),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          // aşağı yukarı kaydırmasını yaptık
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.5),
                    ),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'Merhaba, $burc unun  ' +
                          yanitlar[yanitIndex],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      padding: const EdgeInsets.all(20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            (15.0),
                          ),
                        ),
                      )),
                  onPressed: () {
                    if (deger == 1) {
                      falIndex = 1;
                    } else if (deger == 2) {
                      falIndex = 6;
                    } else if (deger == 3) {
                      falIndex = 11;
                    } else if (deger == 4) {
                      falIndex = 16;
                    }

                    setState(() {
                      yanitIndex = Random().nextInt(5) + falIndex;
                    });
                  },
                  child: Text(
                    "Yeni Fal İçin Tıkla",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}