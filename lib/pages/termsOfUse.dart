import 'package:flutter/material.dart';

class TermsOfUseScreen extends StatefulWidget {
  TermsOfUseScreen({Key? key}) : super(key: key);

  @override
  State<TermsOfUseScreen> createState() => _TermsOfUseScreenState();
}

class _TermsOfUseScreenState extends State<TermsOfUseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("Kullanım Koşulları"),
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade700,
            borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.all(20),
        width: 350,
        height: 500,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Text(
              "İşbu Kullanım Koşulları binnaz.com internet sitesinin tüm özel ve tüzel kişi ve kurumlar (bundan böyle “Kullanıcı” veya “Kullanıcılar” olarak anılacaktır) tarafından kullanım koşullarını içermektedir.\nbinnaz.com site hizmetinden yararlanan “Kullanıcılar” işbu Kullanım Koşullarının tamamını okuduklarını, içeriğini tamamıyla anladıklarını ve tüm maddelerini kayıtsız şartsız kabul ettiklerini ve onayladıklarını peşinen taahhüt ederler.\nbinnaz.com, Kullanım Koşullarını tek taraflı olarak değiştirme ya da tadil etme hakkına sahiptir.\nbinnaz.com tüm “Kullanıcıların” kişilik haklarına, gizlilik haklarına saygı duymaktadır. Maddelerde yazılı sebepler dışında ve yargı mercileri istemi haricinde her ne sebeple olursa olsun kişisel bilgileri hiçbir kurum veya kuruluşa vermeyeceğini kabul ve taahhüt eder.\nbinnaz.com hiçbir sebep beyan etmeden istediği “Kullanıcılara” yorum ücreti iade ederek hizmet vermeyi reddetme hak ve yetkisine sahiptir.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      )),
    );
  }
}
