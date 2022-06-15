import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("Gizlilik Sözleşmesi"),
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
              "Sitemizce alınan bilgiler sadece sitenin servislerinden sorunsuzca faydalanmanızı sağlamak amacı ile alınmış temel bilgilerdir.\nbinnaz.com, size en iyi hizmeti vermek için e-mail adresiniz gibi bir takım bilgilerinizi sizin onayınızla alarak sisteme kaydeder ve binnaz.com, siz kullanıcılarına ait e-posta, telefon numarası gibi iletişim bilgilerini hiçbir iş ortağı, şirket, kurum ya da diğer kuruluşla paylaşmaz. Kullanıcılar arasındaki yazışmaları diğer kullanıcılara açmaz.\nKayıtlı kişisel bilgileriniz hiçbir şekilde satılmaz, kiralanmaz ya da başka bir kurum ya da kuruluş ile karşılıklı değiştirilmez. Bu 'Gizlilik Politikası' metninde yer alan maddeler haricinde hiçbir şekilde üçüncü şahıslarla paylaşılmaz.\nKişisel bilgilerinizi ancak Kullanım Koşullarında kabul ettiğiniz kurallar çerçevesinde yasal mercilere açabilir.\nKişisel bilgiler genel kullanıma açık olmayan güvenli bir ortamda saklanır. binnaz.com, bilgilerinizi korumak için en güncel teknoloji standartlarını kullanmaktadır.",
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